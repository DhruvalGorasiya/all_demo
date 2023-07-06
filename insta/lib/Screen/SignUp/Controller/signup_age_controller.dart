import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:insta/Model/userdata_model.dart';

class SignPageController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  RxBool showPass = false.obs;
  User? user;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  addUserDataOnFirestore() async {
    UserModel userModel = UserModel(
        email: user?.email ?? '',
        following: [],
        profileURL: AppSharedPreference.profileUrl ?? '',
        username: usernameController.text,
        followers: [],
        uid: user?.uid ?? '',
        );
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(user?.uid)
        .set(userModel.toJson())
        .then(
          (value) => log("User Added"),
        )
        .catchError(
          (error) => log("Failed to add user: $error"),
        );
  }

  Future<void> signUp({required String email, required String password}) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      log(user?.email ?? '');
      log(user?.uid ?? '');
      AppSharedPreference.setUserName(usernameController.text);
      AppSharedPreference.setUid(user?.uid ?? '');
      AppSharedPreference.setEmail(user?.email ?? '');
      log(AppSharedPreference.userName.toString());
    } on FirebaseAuthException catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
