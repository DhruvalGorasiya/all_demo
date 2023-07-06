import 'package:e_commerce/Pages/Favorite_Page.dart';
import 'package:e_commerce/Pages/Cart_Page.dart';
import 'package:e_commerce/Pages/First_Pages/Components/List_Card.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.BlueAccent,
      appBar: AppBar(
        backgroundColor: AppColor.BlueAccent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            AppString.FirstPageName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.07,
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    color: AppColor.White,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: FaIcon(
                          Icons.search_outlined,
                          color: AppColor.black45,
                          size: 22,
                        ),
                      ),
                      Text(
                        AppString.SearchBox,
                        style: GoogleFonts.lato(
                            color: AppColor.black45, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.17,
                    decoration: BoxDecoration(
                      color: AppColor.White,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: FaIcon(
                        Icons.photo_camera_outlined,
                        color: AppColor.BlueAccent,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Categories(),
            Container(
              height: height * 0.12,
              width: width * 0.8,
              decoration: BoxDecoration(
                color: Colors.blueAccent[400],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return FavoritePage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.17,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45.withOpacity(0.12),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: FaIcon(
                          Icons.favorite_border_outlined,
                          color: AppColor.BlueAccent,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.17,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45.withOpacity(0.12),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: FaIcon(
                        Icons.settings,
                        color: AppColor.BlueAccent,
                        size: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Cart_Page();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: height * 0.078,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45.withOpacity(0.12),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: FaIcon(
                          Icons.shopping_bag_outlined,
                          color: AppColor.BlueAccent,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
