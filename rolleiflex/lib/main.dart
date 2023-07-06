import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    color: Colors.blueGrey.shade200,
                  ),
                  Container(
                    height: height * 0.45,
                    width: width * 0.9,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: width * 0.87,
                height: height * 0.62,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(color: Colors.black12, width: 2.5),
                  bottom: BorderSide(color: Colors.black12, width: 2.5),
                  right: BorderSide(color: Colors.black12, width: 2.5),
                )),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.37,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.26,
                    ),
                    Container(
                      height: height * 0.25,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Asset/IMG/rolleiflex flex.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "/63",
                      style: GoogleFonts.roboto(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ATLANTIC",
                        style: GoogleFonts.roboto(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "Gallery",
                        style: GoogleFonts.lato(
                            decoration: TextDecoration.underline,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.15,
                      ),
                      Column(
                        children: [
                          Text(
                            "N",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Text(
                            "L",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: height * 0.16,
                          ),
                          Text(
                            "p",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Rolleiflex",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Text(
                            "7,5 cm",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.175,
                          ),
                          Text(
                            "n",
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  Center(
                    child: Text(
                      'The "Rolleiflex" name is\nmost commonly used to\nrefer to Rollei\'s premier\nline of medium formet\ntwin lens reflex (TLR)\ncameras.',
                      style: GoogleFonts.lato(
                          fontSize: 22, height: 1.35, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 42, bottom: 55),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.menu,
                  size: 28,
                  color: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
