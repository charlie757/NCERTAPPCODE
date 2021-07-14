import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ncertapp/Authenication/error_handler.dart';
import 'package:ncertapp/HomePageWidget/HomePage.dart';

import 'LoginPage.dart';

class AuthService {
  //Determine if the user is authenticated.
  handleAuth() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else
            return LoginPage();
        });
  }

  //Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  resetPasswordLink(String email) {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  signUp(String email, String password) {
    return FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  void fbSignIn() {}

  signIn(String email, String password, context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((val) {
      print("Signned in");
    }).catchError((e) {
      ErrorHandler().errorDialog(context, e);
    });
  }
}
