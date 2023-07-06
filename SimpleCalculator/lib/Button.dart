import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplecalculator/AppColor.dart';

Widget FButton(
    {Color? BTColor = Appcolor.BGColor,
    required String text,
    Color? TColor = Colors.white,
    double? TSize = 35,
    double? elevation = 0,
    Function? CallBack}) {
  return FloatingActionButton(
    onPressed: () {
      CallBack!(text);
    },
    backgroundColor: BTColor,
    elevation: elevation,
    child: Text(
      text,
      style: GoogleFonts.rubik(fontSize: TSize, color: TColor),
    ),
  );
}
