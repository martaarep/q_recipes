import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_tdd_q/common/data/firebase_collections.dart';
import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';

abstract class IFavoriteRemoteDataSource {
  Future<Unit> addFavorite({required Recipe recipe});
  Future<Unit> removeFavorite({required Recipe recipe});
  Stream<List<Recipe>> getFavorites();
}

class FavoriteRemoteDataSource implements IFavoriteRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FavoriteRemoteDataSource(this._firebaseAuth, this._firebaseFirestore);
  @override
  Future<Unit> addFavorite({required Recipe recipe}) async {
    try {
      final user = _firebaseAuth.currentUser;
      await _firebaseFirestore
          .collection(Collections.users)
          .doc(user!.uid)
          .collection(Collections.favourites)
          .add(recipe.toJson());
      return unit;
    } on FirebaseException catch (e) {
      throw DataSourceException(message: e.message);
    }
  }

  @override
  Stream<List<Recipe>> getFavorites() async* {
    try {
      final user = _firebaseAuth.currentUser;

      yield* FirebaseFirestore.instance
          .collection(Collections.users)
          .doc(user!.uid)
          .collection(Collections.favourites)
          .snapshots()
          .transform(
            StreamTransformer.fromHandlers(
              handleData: (json, sink) => sink.add(
                json.docs.map((e) => Recipe.fromJson(e.data())).toList(),
              ),
            ),
          );
    } on FirebaseException catch (e) {
      throw DataSourceException(message: e.message);
    }
  }

  @override
  Future<Unit> removeFavorite({required Recipe recipe}) async {
    try {
      final user = _firebaseAuth.currentUser;
      final removingBook = await FirebaseFirestore.instance
          .collection(Collections.users)
          .doc(user!.uid)
          .collection(Collections.favourites)
          .where("id", isEqualTo: recipe.id)
          .get();

      removingBook.docs.first.reference.delete();

      return unit;
    } on FirebaseException catch (e) {
      throw DataSourceException(message: e.message);
    }
  }
}
