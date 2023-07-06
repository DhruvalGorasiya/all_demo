import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';

class LoginPageController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  RxBool showPass = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  User? user;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  addUserDataOnFirestore() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(user?.uid)
        .get()
        .then(
          (value) => log("User Added"),
        )
        .catchError(
          (error) => log("Failed to add user: $error"),
        );
  }

  Future<void> logIn({required String email, required String password}) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      log(user?.email ?? '');
      log(user?.uid ?? '');
      AppSharedPreference.setUid(user?.uid ?? '');
      AppSharedPreference.setEmail(user?.email ?? '');
      log('share pref UID ~~~> ${AppSharedPreference.uid.toString()}');
    } on FirebaseAuthException catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
