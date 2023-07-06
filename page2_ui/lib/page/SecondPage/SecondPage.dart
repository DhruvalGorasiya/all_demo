import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page2_ui/page/FirstPage/First_Page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return FirstPage();
                },
              ),
            );
          },
          child: Container(
            child: Column(
              children: [
                Container(
                  height: height * 0.4,
                  width: width * 1,
                  child: Image.network(
                    "https://4kwallpapers.com/images/walls/thumbs_2t/3308.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Text(
                  "FEATURED",
                  style: GoogleFonts.notoSans(
                    color: Colors.black45,
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Blur Ocen\nWaves Crash",
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: height * 0.1,
                  width: width * 1,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: height * 0.003,
                          width: width * 0.13,
                          color: Colors.grey[300],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: height * 0.035,
                          width: width * 0.1,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, width: 2),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "See the beautiful oceans of the\nPacific coast where the water is so\nclean you can see the sand.",
                  style: GoogleFonts.playfairDisplay(
                      height: height * 0.0025,
                      fontSize: 18,
                      color: Colors.black45),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
