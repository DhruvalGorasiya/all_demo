import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Card_grid(context,
    {required String Product_Name,
    required String Prize,
    required String ImgUrl}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
    child: Container(
      height: height * 0.5,
      width: width * 0.6,
      decoration: BoxDecoration(
        color: AppColor.White,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.12),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.11,
                  width: width * 0.11,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue.shade50),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.BlueAccent,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: height * 0.11,
                    width: width * 0.11,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.BlueAccent),
                    child: Center(
                      child: FaIcon(
                        Icons.shopping_bag_outlined,
                        color: AppColor.White,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              ImgUrl,
            ),
            Text(
              Prize,
              style: GoogleFonts.lato(
                  color: AppColor.Black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                Product_Name,
                style: GoogleFonts.notoSans(
                    color: AppColor.BlueAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Text(
                  AppString.See_the_details,
                  style: GoogleFonts.lato(
                      color: AppColor.BlueAccent, fontSize: 16),
                ),
                FaIcon(
                  Icons.keyboard_arrow_right_outlined,
                  color: AppColor.BlueAccent,
                  size: 26,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
