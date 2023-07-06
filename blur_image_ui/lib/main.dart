import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'Asset/IMG/evie-s-_8vovuZCj0c-unsplash (1).jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white30,
              ),
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
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "TYPE 010",
                          style: GoogleFonts.roboto(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "KODAK RETINA",
                          style: GoogleFonts.roboto(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 280,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Type 010 Retina I",
                            style: GoogleFonts.roboto(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "1946 to 1949",
                            style: GoogleFonts.roboto(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                          SizedBox(height: 60),
                          Icon(
                            Icons.menu,
                            color: Colors.black54,
                            size: 28,
                          )
                        ],
                      ),
                    ],
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
