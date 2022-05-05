import 'package:flutter_tdd_q/common/data/current_user_provider.dart';
import 'package:flutter_tdd_q/common/data/repositories/user_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart';
import 'package:flutter_tdd_q/features/auth/data/repositories/auth_repository.dart';
import 'package:flutter_tdd_q/features/auth/presentation/state/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final UserProvider _userProvider;
  final AuthRepository _authRepo;
  final UserRepository _userRepository;

  AuthNotifier(
    this._userProvider,
    this._authRepo,
    this._userRepository,
  ) : super(const AuthState.initial());

  Future<void> checkIfAuthenticated() async {
    state = const AuthState.authenticating();
    await Future.delayed(const Duration(seconds: 2));

    final regComplete = await _authRepo.isRegistrationComplete();
    if (regComplete) {
      await _userProvider.setup();
      state = const AuthState.authenticated();
    } else {
      state = const AuthState.unauthenticated();
    }
  }

  Future<void> signIn() async {
    final signInResult = await _authRepo.signIn();
    await signInResult.fold(
      (failure) async => state = AuthState.failure(failure),
      (success) async {
        if (!success.registrationComplete) {
          await _setNewUser(success.user);
        }
        state = const AuthState.authenticated();
      },
    );
  }

  Future<void> _setNewUser(User user) async {
    final userResult = await _userRepository.createUser(user: user);
    state = userResult.fold(
      (failure) => AuthState.failure(failure),
      (success) => const AuthState.savedUser(),
    );
  }

  Future<void> signOut() async {
    final result = await _authRepo.signOut();
    state = result.fold(
      (failure) => AuthState.failure(failure),
      (success) => const AuthState.signedOut(),
    );
  }
}
