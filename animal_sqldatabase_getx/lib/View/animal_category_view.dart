import 'package:animal_sqldatabase_getx/Controller/animal_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Controller/home_page_controller.dart';
import '../Model/model.dart';

class AnimalCategory extends StatelessWidget {
  AnimalCategory({Key? key}) : super(key: key);
  static const routeName = '/AnimalCategory';
  final AnimalCategoryController _controller = Get.put(
    AnimalCategoryController(),
  );
  final HomePageController _homePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _controller.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _homePageController.title.value,
                style: GoogleFonts.lato(
                    fontSize: 25.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                _controller.choose.value,
                style: GoogleFonts.lato(
                    fontSize: 30.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              SizedBox(
                height: 80.h,
                child: ListView.builder(
                  itemCount: _homePageController.allData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 4.w),
                      child: Container(
                        height: 18.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            opacity: 0.7,
                            image: NetworkImage(
                                _homePageController.allData[index]['img']),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              _homePageController.allData[index]['name'],
                              style: GoogleFonts.lato(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 20.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          _homePageController.allData[index]['logo'],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
