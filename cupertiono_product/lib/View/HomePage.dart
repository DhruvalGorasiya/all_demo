import 'package:cupertiono_product/Utilits/AppColors.dart';
import 'package:cupertiono_product/View/Cart.dart';
import 'package:cupertiono_product/View/Home.dart';
import 'package:cupertiono_product/View/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int BarIndex = 0;
  List<Widget> bodyApp = [
    Home(),
    Search(),
    Cart(),
  ];
  void ChanBar(int index) {
    setState(() {
      BarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyApp[BarIndex],
      appBar: AppBar(
        backgroundColor: AppColor.Grey6,
        elevation: 0,
        title: Text(
          "Cupertino Store",
          style: GoogleFonts.lato(
              color: AppColor.Black, fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.Grey6,
        onTap: ChanBar,
        currentIndex: BarIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: "Search"),
        ],
      ),
    );
  }
}
