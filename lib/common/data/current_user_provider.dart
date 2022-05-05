import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter_tdd_q/common/data/firebase_collections.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart';

abstract class UserProvider {
  String get id;
  String get firebaseDocPath;
  Future setup();
  Future deleteUserData();
  Stream<User> get userChanges;
}

class CurrentUserProvider implements UserProvider {
  final _firestore = FirebaseFirestore.instance;

  String? _uid;

  CurrentUserProvider() {
    FirebaseAuth.instance.authStateChanges().listen((event) async {
      _uid = event?.uid;
    });
  }

  @override
  Future setup() async {
    final user = FirebaseAuth.instance.currentUser!;
    _uid = user.uid;
    if (_uid == null) return;

    final userJson = (await _firestore.doc(firebaseDocPath).get()).data();
    if (userJson == null) return;
  }

  @override
  Stream<User> get userChanges =>
      _firestore.doc(firebaseDocPath).snapshots().map((response) {
        final user = User.fromJson(response.data()!);
        return user;
      }).asBroadcastStream();

  @override
  Future deleteUserData() async {
    await _firestore.doc(firebaseDocPath).delete();
  }

  @override
  String get id => _uid!;

  @override
  String get firebaseDocPath => '/${Collections.users}/$_uid';
}
