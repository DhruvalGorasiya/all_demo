import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Common/Share_Pref.dart';
import 'package:insta/Screen/AddPost/add_post.dart';
import 'package:insta/Screen/BottomNavigation/Controller/bottom_navigation_bar_controller.dart';
import 'package:insta/screen/chat_user_list/user_chat_list.dart';
import 'package:sizer/sizer.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  static const routeName = '/BottomNavigation';

  final BottomNavigationBarController _controller = Get.put(
    BottomNavigationBarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 4.5.h,
          child: Image.asset(_controller.logoImg),
        ),
        actions: [
          GestureDetector(
            onTap: () async {
              Get.toNamed(AddPost.routeName);
            },
            child: SizedBox(
              width: 7.w,
              height: 2.5.h,
              child: Image.asset(_controller.addPost),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(ChatUserList.routeName);
            },
            child: SizedBox(
              width: 7.w,
              height: 2.5.h,
              child: Image.asset(_controller.massage),
            ),
          ),
          SizedBox(
            width: 2.5.w,
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 0.sp,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 3.h,
                width: 3.h,
                child: Image.asset(_controller.home),
              ),
              label: '',
              activeIcon: SizedBox(
                height: 3.3.h,
                width: 3.3.h,
                child: Image.asset(_controller.home),
              ),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 3.h,
                width: 3.h,
                child: Image.asset(_controller.search),
              ),
              label: '',
              activeIcon: SizedBox(
                height: 3.3.h,
                width: 3.3.h,
                child: Image.asset(_controller.search),
              ),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 3.h,
                width: 3.h,
                child: Image.asset(_controller.reels),
              ),
              label: '',
              activeIcon: SizedBox(
                height: 3.3.h,
                width: 3.3.h,
                child: Image.asset(_controller.reels),
              ),
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 3.h,
                width: 3.h,
                child: Image.asset(_controller.like),
              ),
              label: '',
              activeIcon: SizedBox(
                height: 3.3.h,
                width: 3.3.h,
                child: Image.asset(_controller.like),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 3.h,
                width: 3.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.5.w),
                  image: DecorationImage(
                    image: NetworkImage(AppSharedPreference.profileUrl ?? ''),
                  ),
                ),
              ),
              label: '',
              activeIcon: Container(
                height: 3.3.h,
                width: 3.3.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.5.w),
                  image: DecorationImage(
                    image: NetworkImage(AppSharedPreference.profileUrl ?? ''),
                  ),
                ),
              ),
            ),
          ],
          currentIndex: _controller.selectedIndex.value,
          selectedItemColor: Colors.black,
          onTap: _controller.onItemTapped,
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => _controller.widgetOptions.elementAt(
            _controller.selectedIndex.value,
          ),
        ),
      ),
    );
  }
}
