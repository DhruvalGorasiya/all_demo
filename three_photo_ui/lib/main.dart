import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "Assets/IMG/dan-calderwood-GJez8OZsyec-unsplash.jpg"),
                    fit: BoxFit.fill),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Photos & Videos",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "269 shots",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.4,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "Assets/IMG/jezael-melgoza-7H77FWkK_x4-unsplash.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          children: [
                            Container(
                              height: height * 0.19,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "Assets/IMG/luke-leung-14BVc2mD9Bk-unsplash.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              height: height * 0.19,
                              width: width * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "Assets/IMG/pmi-story-07-sky-banner-desktop.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
