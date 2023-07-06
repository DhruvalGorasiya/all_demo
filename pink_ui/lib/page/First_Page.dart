import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.pink.shade100),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: height * 0.08,
                    width: width * 0.18,
                    color: Color(0xFF1e5296),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.18,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.pink.shade100),
                      ),
                    ),
                    child: Icon(
                      Icons.grid_view,
                      size: 30,
                      color: Colors.pink[100],
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.18,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.pink.shade100),
                      ),
                    ),
                    child: Icon(
                      Icons.info_outline,
                      size: 30,
                      color: Colors.pink[100],
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.18,
                    color: Colors.pink[100],
                    child: Icon(
                      Icons.toll_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width * 0.18,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.pink.shade100),
                      ),
                    ),
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: Colors.pink[100],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            color: Colors.pink[100],
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 90,
                                  ),
                                  Text(
                                    "love",
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.001),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: height * 0.2,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.pink.shade100, width: 2),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.man_outlined,
                                    color: Colors.pink[100],
                                    size: 90,
                                  ),
                                  Text(
                                    "love",
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 16,
                                        color: Colors.pink[100],
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.001),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      Text(
                        "problem",
                        style: GoogleFonts.robotoMono(
                          fontSize: 16,
                          color: Colors.redAccent.shade100,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.001,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.05,
                          width: width * 1,
                          color: Colors.redAccent[100],
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "I want to divorce",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      Text(
                        "nuance",
                        style: GoogleFonts.robotoMono(
                          fontSize: 16,
                          color: Colors.pink[100],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.001,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.05,
                          width: width * 1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.pink.shade100, width: 3)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "I don't love anymore",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Colors.pink[100],
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 1.65),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.05,
                          width: width * 1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.pink.shade100, width: 3)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "we have no children",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Colors.pink[100],
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 1.65),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.05,
                          width: width * 1,
                          color: Colors.pink.shade100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "I have a lover",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 2),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.05,
                          width: width * 1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.pink.shade100, width: 3)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "I am so tired",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Colors.pink[100],
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 1.65),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.045,
                      ),
                      Text(
                        "decision",
                        style: GoogleFonts.robotoMono(
                          fontSize: 16,
                          color: Color(0xFF1e5296),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.001,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.055,
                          width: width * 1,
                          color: Color(0xFF1e5296),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "divorce",
                                  style: GoogleFonts.robotoMono(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.001,
                                      height: 1),
                                ),
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                  size: 35,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          height: height * 0.055,
                          width: width * 1,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF1e5296), width: 3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "do not divorce",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 16,
                                  color: Color(0xFF1e5296),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.001,
                                  height: 1.65),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
