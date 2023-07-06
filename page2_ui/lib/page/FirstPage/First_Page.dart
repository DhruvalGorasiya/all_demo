import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../SecondPage/SecondPage.dart';

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
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
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
                    "https://cdn.pixabay.com/photo/2016/02/19/10/10/aqua-1209103_960_720.jpg",
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
                  "Long Exposure\nRiver Bridge",
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
                  "Long exposure photography is when\nyou leave the shutter open longer\nthan usual to pick up more light.",
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
