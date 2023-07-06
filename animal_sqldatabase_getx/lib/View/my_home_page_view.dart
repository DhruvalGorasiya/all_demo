import 'package:google_fonts/google_fonts.dart';
import '../Controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';

  final HomePageController _controller = Get.put(HomePageController());

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(_controller.image.value),
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  _controller.title.value,
                  style: GoogleFonts.lato(fontSize: 30.sp, color: Colors.white),
                ),
               const Spacer(),
                Text(
                  _controller.tagline.value,
                  style: GoogleFonts.lato(
                      fontSize: 45.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  _controller.discription.value,
                  style: GoogleFonts.lato(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextButton(
                  onPressed: () {
                    _controller.route();
                  },
                  child: Text(
                    _controller.buttonText.value,
                    style: GoogleFonts.lato(
                        fontSize: 25.sp,
                        color: Colors.white,
                        letterSpacing: 2.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
