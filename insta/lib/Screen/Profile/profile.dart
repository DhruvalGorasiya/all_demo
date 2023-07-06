import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/Share_Pref.dart';
import 'package:insta/Screen/Login/login_page.dart';
import 'package:insta/Screen/Profile/Controller/profile_controller.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  static const routeName = '/Profile';
  final ProfileController _controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Obx(() {
            if (_controller.isLoading.value) {
              return const CircularProgressIndicator();
            } else {
              return InkWell(
                onTap: () async {
                  await _controller.pickImage();
                  await _controller.uploadImageToStorage(
                    isPost: false,
                    childName: 'UserProfilePic',
                  );
                },
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 0.5.w),
                    image: DecorationImage(
                        image: NetworkImage(
                          AppSharedPreference.profileUrl.toString(),
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              );
            }
          }),
          SizedBox(
            height: 4.h,
          ),
          TextButton(
            onPressed: () async {
              await _controller.signOut();
              AppSharedPreference.clear();
              log('Share Uid ~~~>${AppSharedPreference.uid}');
              Get.offNamed(LoginPage.routeName);
            },
            child: Text(
              'LogOut',
              style: TextStyle(fontSize: 20.sp),
            ),
          ),
        ],
      ),
    );
  }
}
