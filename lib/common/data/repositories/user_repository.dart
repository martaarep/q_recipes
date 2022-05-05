import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter_tdd_q/common/data/firebase_collections.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart';
import 'package:flutter_tdd_q/common/utils/network_info.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> createUser({
    required User user,
  });
  String collectionPath(String document);
}

class FirebaseUserRepository implements UserRepository {
  final FirebaseFirestore _firebaseFirestore;
  final NetworkInfo _networkInfo;
  final FirebaseAuth _firebaseAuth;

  FirebaseUserRepository(
      this._networkInfo, this._firebaseFirestore, this._firebaseAuth);

  @override
  Future<Either<Failure, User>> createUser({
    required User user,
  }) async {
    if (!(await _networkInfo.isConnected)) return const Left(Failure.offline());

    final currentUser = _firebaseAuth.currentUser!;
    final newUser = user.copyWith(
      id: currentUser.uid,
      email: currentUser.email!,
    );
    await _firebaseFirestore
        .doc(collectionPath(currentUser.uid))
        .set(newUser.toJson());

    return Right(newUser);
  }

  @override
  String collectionPath(String document) => '/${Collections.users}/$document';
}
