import 'package:app_store/Utilitis/AppColors.dart';
import 'package:app_store/View/Apps.dart';
import 'package:app_store/View/Games.dart';
import 'package:app_store/View/Search.dart';
import 'package:app_store/View/Today.dart';
import 'package:app_store/View/Updates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Index = 0;
  List<Widget> bodyApp = [
    Today(),
    Games(),
    Apps(),
    Updates(),
    Search(),
  ];

  void Bar(int index) {
    setState(() {
      Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.lato(color: AppColors.Blue),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.Blue,
        unselectedItemColor: AppColors.Grey,
        unselectedLabelStyle: GoogleFonts.lato(color: AppColors.Grey),
        onTap: Bar,
        currentIndex: Index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.today,
            ),
            label: "Today",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.rocket_fill,
            ),
            label: "Games",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.layers_alt_fill,
            ),
            label: "Apps",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_arrow_down_fill,
            ),
            label: "Update",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
            ),
            label: "Search",
          ),
        ],
      ),
      body: SafeArea(child: bodyApp[Index]),
    );
  }
}
