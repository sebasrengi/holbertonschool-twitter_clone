import 'package:firebase_auth/firebase_auth.dart' as authFB;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:twitter/models/user.dart';

enum Errors {
  none,
  matchError,
  weakError,
  existsError,
  error,
  wrongError,
  noUserError
}

class Auth extends ChangeNotifier {
  final authFB.FirebaseAuth _auth = authFB.FirebaseAuth.instance;

  final usersRef =
      FirebaseFirestore.instance.collection('users').withConverter<User>(
            fromFirestore: (snapshot, _) {
              return User.fromJson(
                snapshot.data() ?? {},
              );
            },
            toFirestore: (user, _) => user.toJson(),
          );

  Future attemptSignUp({
    required String email,
    required String name,
    required String password,
    required String passwordConfirmation,
  }) async {
    if (password != passwordConfirmation) return Errors.matchError;

    try {
      authFB.UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return usersRef
          .add(User(
            userID: userCredential.user!.uid,
            email: email,
            displayName: name,
            userName: '@${name}Holberton',
          ))
          .then((value) => Errors.none)
          .catchError((onError) => Errors.error);
    } on authFB.FirebaseAuthException catch (firebaseError) {
      switch (firebaseError.code) {
        case 'email-already-in-use':
          return Errors.existsError;
        case 'weak-password':
          return Errors.weakError;
        case 'invalid-email':
          return Errors.wrongError;
        default:
          return Errors.error;
      }
    }
  }

  Future attemptLogin({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Errors.none;
    } on authFB.FirebaseAuthException catch (err) {
      switch (err.code) {
        case 'user-not-found':
          return Errors.noUserError;
        case 'wrong-password':
          return Errors.wrongError;
        default:
          return Errors.error;
      }
    }
  }

  Future logout() async {
    await _auth.signOut() as authFB.User;
  }

  Future<User> getCurrentUserModel() async {
    final currentUser = await _auth.currentUser;
    final userDocument = await usersRef.doc(currentUser?.uid).get();
    return User.fromJson(userDocument.data());
  }
}
