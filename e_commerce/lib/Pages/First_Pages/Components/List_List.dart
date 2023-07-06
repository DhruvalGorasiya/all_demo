import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

List_List(context,
    {required String Product_Name,
    required String Prize,
    required String ImgUrl}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
    child: Container(
      height: height * 0.2,
      decoration: BoxDecoration(
        color: AppColor.White,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: width * 0.15,
              backgroundColor: AppColor.White,
              child: ClipOval(
                child: Image.asset(ImgUrl),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Product_Name,
                  style: GoogleFonts.lato(
                      color: AppColor.BlueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  Prize,
                  style: GoogleFonts.lato(
                      color: AppColor.BlueAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.BlueAccent, width: 1.5)),
              child: FaIcon(
                Icons.keyboard_arrow_right,
                color: AppColor.BlueAccent,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
