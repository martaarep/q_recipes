import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart' as mockUser;
import 'package:flutter_tdd_q/common/data/repositories/user_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/user.dart' as modelUser;
import 'package:flutter_tdd_q/common/utils/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_repository_test.mocks.dart';

@GenerateMocks(
    [FirebaseFirestore, NetworkInfo, FirebaseAuth, DocumentReference])
void main() {
  late FirebaseFirestore _firebaseFirestore;
  late NetworkInfo _networkInfo;
  late FirebaseAuth _firebaseAuth;
  late UserRepository _userRepository;
  late DocumentReference<Map<String, dynamic>> _documentReference;

  const modelUser.User user = modelUser.User(id: '1', email: 'aaa@gmail.com');
  final firebaseUser = mockUser.MockUser(uid: '1', email: 'aaa@gmail.com');

  setUp(() {
    _firebaseFirestore = MockFirebaseFirestore();
    _networkInfo = MockNetworkInfo();
    _firebaseAuth = MockFirebaseAuth();
    _documentReference = MockDocumentReference();
    _userRepository =
        FirebaseUserRepository(_networkInfo, _firebaseFirestore, _firebaseAuth);
  });

  group('createUser', () {
    test('Return failure when device is offline', () async {
      when(_networkInfo.isConnected)
          .thenAnswer((_) async => Future.value(false));
      final result = await _userRepository.createUser(user: user);
      verify(_networkInfo.isConnected);
      expect(result, const Left(Failure.offline()));
    });
    test('Create user and set it to firebase when device is online', () async {
      when(_networkInfo.isConnected)
          .thenAnswer((_) async => Future.value(true));
      when(_firebaseAuth.currentUser).thenReturn(firebaseUser);
      // when(user.copyWith.call());
      final collectionPath = _userRepository.collectionPath(user.id);
      when(_firebaseFirestore.doc(collectionPath))
          .thenReturn(_documentReference);
      when(_documentReference.set(user.toJson()));

      final result = await _userRepository.createUser(user: user);

      verify(_networkInfo.isConnected);
      verify(_firebaseAuth.currentUser);
      verify(_firebaseFirestore.doc(collectionPath));
      verify(_documentReference.set(user.toJson()));
      expect(result, const Right(user));
    });
  });
}
