import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/auth/auth_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/auth/auth_success.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart';
import 'package:flutter_tdd_q/common/domain/models/user_credentials.dart';
import 'package:flutter_tdd_q/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_tdd_q/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_tdd_q/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_test.mocks.dart';

// Mock dependencies
@GenerateMocks([AuthRemoteDataSource, AuthLocalDataSource])
void main() {
// Prepare prerequisites
  late AuthRemoteDataSource mockAuthRemoteDataSource;
  late AuthLocalDataSource mockAuthLocalDataSource;
  late AuthRepository authRepository;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    authRepository =
        AuthRepository(mockAuthRemoteDataSource, mockAuthLocalDataSource);
  });

  const userCredentials = UserCredentials(email: 'test@t.com', uid: '3445uidX');
  final user = User(id: userCredentials.uid, email: userCredentials.email);
  final authSuccess = AuthSuccess(registrationComplete: true, user: user);
  const authFailureOther =
      Failure.authenticationFailure(AuthFailureReason.other);
  const authFailureGoogleSignIn =
      Failure.authenticationFailure(AuthFailureReason.googleSignIn);

  // Group tests by methods from AuthRepository
  group('Sign in tests', () {
    void _setupSuccess() {
      when(mockAuthRemoteDataSource.googleSignIn())
          .thenAnswer((_) async => userCredentials);
      when(mockAuthLocalDataSource.storeUserCredentials(userCredentials))
          .thenAnswer((_) async {});
      when(mockAuthRemoteDataSource.isRegistrationComplete())
          .thenAnswer((_) async => Future.value(true));
    }

    test(
      'authRepository.signIn should call authRemoteDataSource.googleSignIn',
      () async* {
        // Arrange
        _setupSuccess();
        // Act
        await authRepository.signIn();
        // Assert
        verify(mockAuthRemoteDataSource.googleSignIn());
      },
    );
    test(
      'authRepository.signIn should call authRemoteDataSource.isRegistrationComplete',
      () async* {
        _setupSuccess();
        await authRepository.signIn();
        verify(mockAuthRemoteDataSource.isRegistrationComplete());
      },
    );
    test(
      'authRepository.signIn should call authLocalDataSource.storeUserCredentials with userCredentials',
      () async* {
        _setupSuccess();
        await authRepository.signIn();
        verify(mockAuthLocalDataSource.storeUserCredentials(userCredentials));
      },
    );
    test(
      'authRepository.signIn should return authSuccess when user signed in successfully',
      () async* {
        _setupSuccess();
        final result = await authRepository.signIn();
        expect(result, Right(authSuccess));
      },
    );

    test(
      'authRepository.signIn should return AuthenticationFailure.other when sign in failed',
      () async* {
        when(mockAuthRemoteDataSource.googleSignIn()).thenAnswer((_) async =>
            throw const AuthException(failureReason: AuthFailureReason.other));
        final result = await authRepository.signIn();
        expect(result, const Left(authFailureOther));
      },
    );
    test(
      'authRepository.signIn should return AuthenticationFailure.googleSignIn when failed to get authTokens',
      () async* {
        when(mockAuthRemoteDataSource.googleSignIn()).thenAnswer((_) async =>
            throw const AuthException(
                failureReason: AuthFailureReason.googleSignIn));
        final result = await authRepository.signIn();
        expect(result, const Left(authFailureGoogleSignIn));
      },
    );
    test(
      'authRepository.signIn should return AuthenticationLocalDataSourceFailure when failed to store user credentials',
      () async* {
        when(mockAuthLocalDataSource.storeUserCredentials(userCredentials))
            .thenAnswer((_) async => throw AuthLocalDataSourceException());
        final result = await authRepository.signIn();
        expect(result, const Left(authFailureGoogleSignIn));
      },
    );
  });

  group('Sign out tests', () {
    void _setupSuccess() {
      when(mockAuthRemoteDataSource.googleSignOut()).thenAnswer((_) async {});
    }

    void _setupError() {
      when(mockAuthRemoteDataSource.googleSignOut())
          .thenAnswer((_) async => throw Exception());
    }

    test(
      'authRepository.signOut should call authRemoteDataSource.googleSignOut',
      () async* {
        _setupSuccess();
        await authRepository.signOut();
        verify(mockAuthRemoteDataSource.googleSignOut());
      },
    );
    test(
      'authRepository.signOut should return unit when user signed out successfully',
      () async* {
        _setupSuccess();
        final result = await authRepository.signOut();
        expect(result, const Right(unit));
      },
    );

    test(
      'authRepository.signOut should return signOutError when sign out failed',
      () async* {
        _setupError();
        final result = await authRepository.signOut();
        expect(result, const Left(Failure.signOutError()));
      },
    );
  });
  group('Is registration complete tests', () {
    void _setupSuccess() {
      when(mockAuthRemoteDataSource.isRegistrationComplete())
          .thenAnswer((_) async => Future.value(true));
    }

    void _setupError() {
      when(mockAuthRemoteDataSource.isRegistrationComplete())
          .thenAnswer((_) async => throw Exception());
    }

    test(
      'authRepository.isRegistrationComplete should call authRemoteDataSource.isRegistrationComplete',
      () async* {
        _setupSuccess();
        await authRepository.isRegistrationComplete();
        verify(mockAuthRemoteDataSource.isRegistrationComplete());
      },
    );
    test(
      'authRepository.isRegistrationComplete should return true when registration completed successfully',
      () async* {
        _setupSuccess();
        final result = await authRepository.isRegistrationComplete();
        expect(result, const Right(true));
      },
    );

    test(
      'authRepository.isRegistrationComplete should return false when registration failed',
      () async* {
        _setupError();
        final result = await authRepository.isRegistrationComplete();
        expect(result, const Left(false));
      },
    );
  });
}
