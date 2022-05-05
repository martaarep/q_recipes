import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/auth/auth_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/auth/auth_success.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart';
import 'package:flutter_tdd_q/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:flutter_tdd_q/features/auth/data/datasources/auth_remote_data_source.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthSuccess>> signIn();
  Future signOut();
  Future<bool> isRegistrationComplete();
}

class AuthRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepository(this._authRemoteDataSource, this._authLocalDataSource);

  @override
  Future<Either<Failure, AuthSuccess>> signIn() async {
    try {
      final userCredentials = await _authRemoteDataSource.googleSignIn();
      await _authLocalDataSource.storeUserCredentials(userCredentials);
      final isRegistrationComplete =
          await _authRemoteDataSource.isRegistrationComplete();
      final user = User(id: userCredentials.uid, email: userCredentials.email);

      return Right(AuthSuccess(
          registrationComplete: isRegistrationComplete, user: user));
    } on AuthException catch (e) {
      return Left(Failure.authenticationFailure(e.failureReason));
    } on AuthLocalDataSourceException {
      return const Left(Failure.authenticationLocalDataSourceFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await _authRemoteDataSource.googleSignOut();
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.signOutError());
    }
  }

  @override
  Future<bool> isRegistrationComplete() async {
    return _authRemoteDataSource.isRegistrationComplete();
  }
}
