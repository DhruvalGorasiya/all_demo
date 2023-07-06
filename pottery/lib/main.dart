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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "Assets/IMG/white-white-pitcher-lot-grey-grey-image.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Designer's Collection",
                        style: GoogleFonts.ubuntuMono(
                            color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "2018",
                        style: GoogleFonts.ubuntuMono(
                            color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 25),
                    child: Text(
                      "Hand-made\nPottery",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Clonoid",
                      ),
                    ),
                  ),
                  Text(
                    "Luther Van Hudson",
                    style: GoogleFonts.ubuntuMono(
                        color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: DraggableScrollableSheet(
                maxChildSize: 0.55,
                minChildSize: 0.07,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfaefb4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 25, left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Information",
                              style: GoogleFonts.ubuntuMono(
                                  color: Colors.black, fontSize: 16),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Handmade item",
                                      style:
                                          GoogleFonts.ubuntuMono(fontSize: 10),
                                    ),
                                    Text(
                                      "Handmade Can be Personalized: Yes",
                                      style:
                                          GoogleFonts.ubuntuMono(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dimensions:",
                                      style:
                                          GoogleFonts.ubuntuMono(fontSize: 10),
                                    ),
                                    Text(
                                      "Capacity: 7 Fluid ounces",
                                      style:
                                          GoogleFonts.ubuntuMono(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Our beautiful little corner\nof Soho is packed with\ncafés,bulging with\nrestaurants, overflowing\nwith shops, and teeming\nwith creative people.\nwhy do you think we\nmoved here?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Clonoid",
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Each tumbler is hand cast and\nglazed with our own unique glazes\nand molds. We have designed these\nwith clean simple lines to\nemphasize the brilliant colors.",
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
