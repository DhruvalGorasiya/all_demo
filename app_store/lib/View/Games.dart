import 'package:app_store/Model/GameList.dart';
import 'package:app_store/Utilitis/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: height * 0.09,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Games",
                    style: GoogleFonts.ubuntu(
                        color: AppColors.Black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "Assets/IMG/pexels-gustavo-fring-4172933.jpg"),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: CupertinoColors.systemGrey5,
            height: 20,
            thickness: 2,
          ),
          SizedBox(
            height: height * 0.36,
            width: wight * 1,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: gameposter.length,
              itemBuilder: (BuildContext, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NEW GAME",
                        style: GoogleFonts.ubuntu(
                            color: CupertinoColors.activeBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        gameposter[index].Name,
                        style: GoogleFonts.ubuntu(
                          color: CupertinoColors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        gameposter[index].SubName,
                        style: GoogleFonts.ubuntu(
                          color: CupertinoColors.systemGrey2,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: height * 0.26,
                        width: wight * 0.9,
                        decoration: BoxDecoration(
                          color: AppColors.Grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(gameposter[index].IMG),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(
            color: CupertinoColors.systemGrey5,
            height: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Discover AR Gaming",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.ubuntu(
                      fontSize: 20, color: CupertinoColors.systemBlue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.13,
            width: wight * 1,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: GetGames.length,
              itemBuilder: (BuildContext, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: height * 0.1,
                    width: wight * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: height * 0.13,
                            width: wight * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(GetGames[index].IMG),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GetGames[index].Name,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.black,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              GetGames[index].SubName,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.systemGrey2,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.043,
                                  width: wight * 0.16,
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.activeBlue
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "GET",
                                      style: GoogleFonts.ubuntu(
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.13,
            width: wight * 1,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: GetGames.length,
              itemBuilder: (BuildContext, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: height * 0.1,
                    width: wight * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: height * 0.13,
                            width: wight * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(GetGames[index].IMG),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GetGames[index].Name,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.black,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              GetGames[index].SubName,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.systemGrey2,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.043,
                                  width: wight * 0.16,
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.activeBlue
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "GET",
                                      style: GoogleFonts.ubuntu(
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.13,
            width: wight * 1,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: GetGames.length,
              itemBuilder: (BuildContext, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: height * 0.1,
                    width: wight * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: height * 0.13,
                            width: wight * 0.27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(GetGames[index].IMG),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GetGames[index].Name,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.black,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              GetGames[index].SubName,
                              style: GoogleFonts.ubuntu(
                                color: CupertinoColors.systemGrey2,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: height * 0.043,
                                  width: wight * 0.16,
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.activeBlue
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "GET",
                                      style: GoogleFonts.ubuntu(
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
