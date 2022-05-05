import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/user_credentials.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future storeUserCredentials(UserCredentials userCredentials);
  Future<UserCredentials> getUserCredentials();
}

class SharedPrefsAuthDataSource implements AuthLocalDataSource {
  static const _emailKey = 'email';
  static const _uidKey = 'uid';

  @override
  Future storeUserCredentials(UserCredentials userCredentials) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString(_emailKey, userCredentials.email);
      prefs.setString(_uidKey, userCredentials.uid);
    } on Exception {
      throw AuthLocalDataSourceException();
    }
  }

  @override
  Future<UserCredentials> getUserCredentials() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final email = prefs.getString(_emailKey);
      final uid = prefs.getString(_uidKey);
      return UserCredentials(email: email!, uid: uid!);
    } on Exception {
      throw AuthLocalDataSourceException();
    }
  }
}
