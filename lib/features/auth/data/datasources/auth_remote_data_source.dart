import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_tdd_q/common/data/current_user_provider.dart';
import 'package:flutter_tdd_q/common/data/firebase_collections.dart';
import 'package:flutter_tdd_q/common/domain/models/auth/auth_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/user_credentials.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthRemoteDataSource {
  Future<UserCredentials> googleSignIn();
  Future googleSignOut();
  Future<bool> isRegistrationComplete();
}

class FirebaseAuthDatasource implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _fireStore;
  final UserProvider _userProvider;

  FirebaseAuthDatasource(
      this._firebaseAuth, this._fireStore, this._userProvider);

  Future<UserCredentials> _authenticateWith(
      {required AuthCredential credential}) async {
    try {
      final firebaseCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return firebaseCredential.toUserCredentials;
    } on FirebaseAuthException catch (e) {
      throw AuthException(failureReason: _mapExceptionCodeToMessage(e.code));
    }
  }

  AuthFailureReason _mapExceptionCodeToMessage(String code) {
    switch (code) {
      default:
        return AuthFailureReason.other;
    }
  }

  Future<AuthCredential?> _getAuthCredentials() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final googleAuthTokens = await googleUser?.authentication;

    if (googleAuthTokens == null)
      throw const AuthException(failureReason: AuthFailureReason.googleSignIn);
    return GoogleAuthProvider.credential(
      accessToken: googleAuthTokens.accessToken,
      idToken: googleAuthTokens.idToken,
    );
  }

  @override
  Future<UserCredentials> googleSignIn() async {
    final credentials = await _getAuthCredentials();

    if (credentials != null)
      return _authenticateWith(credential: credentials);
    else
      throw const AuthException(failureReason: AuthFailureReason.other);
  }

  Future<void> userSetUp() async => _userProvider.setup();

  @override
  Future<bool> isRegistrationComplete() async {
    try {
      final uid = _firebaseAuth.currentUser?.uid ?? 'user';
      final userDoc = await _fireStore.doc('/${Collections.users}/$uid').get();
      return userDoc.data() != null;
    } on Exception {
      return false;
    }
  }

  @override
  Future googleSignOut() async {
    await FirebaseAuth.instance.signOut();
  }
}

extension _FirebaseUserCredentialsMappable on UserCredential {
  UserCredentials get toUserCredentials =>
      UserCredentials(email: user!.email!, uid: user!.uid);
}
