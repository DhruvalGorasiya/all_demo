import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget storyBox({required String image}) {
  return Container(
    height: 9.h,
    width: 20.w,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFF8A2387),
          Color(0xFFE94057),
          Color(0xFFF27121),
        ],
      ),
    ),
    child: Container(
      margin: EdgeInsets.all(0.75.w),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Assets/Images/TempIMG.png'),
        ),
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    ),
  );
}
