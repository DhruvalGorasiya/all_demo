import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/share_pref.dart';
import 'package:insta/Screen/Home/home.dart';
import 'package:insta/Screen/Like/like.dart';
import 'package:insta/Screen/Profile/profile.dart';
import 'package:insta/Screen/Reels/reels.dart';
import 'package:insta/Screen/Search/search.dart';

class BottomNavigationBarController extends GetxController {
  RxInt selectedIndex = 0.obs;
  String logoImg = 'Assets/Images/Name Logo.png';
  String addPost = 'Assets/Images/AddPost.png';
  String massage = 'Assets/Images/Massages.png';

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() async {
    super.onInit();
    getUsername();
  }

  void getUsername() async {
    DocumentSnapshot spt = await FirebaseFirestore.instance
        .collection('Users')
        .doc(AppSharedPreference.uid)
        .get();
    log(spt.data().toString());

    var firebaseData = (spt.data() as Map<String, dynamic>);
    AppSharedPreference.setEmail(
      firebaseData['email'],
    );
    log(AppSharedPreference.email.toString());
    AppSharedPreference.setUserName(
      firebaseData['username'],
    );
    log(AppSharedPreference.userName.toString());
    AppSharedPreference.setUid(
      firebaseData['uid'],
    );
    log(firebaseData.toString());
    AppSharedPreference.setProfileUrl(
      firebaseData['profileURl'],
    );
    log(AppSharedPreference.profileUrl.toString());
    AppSharedPreference.setFollowers(
      firebaseData['followers'],
    );
    AppSharedPreference.setFollowing(
      firebaseData['following'],
    );
  }

  String home = 'Assets/Images/home.png';
  String search = 'Assets/Images/Search.png';
  String reels = 'Assets/Images/Reels.png';
  String like = 'Assets/Images/Like.png';
  final List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    Search(),
    const Reels(),
    const Like(),
    Profile(),
  ];
}
