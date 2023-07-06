import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: Colors.black,
                      height: 4,
                      width: 20,
                    ),
                    Container(
                      color: Colors.grey[400],
                      height: 4,
                      width: 50,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "BACK",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Text(
                      "GRID VIEW",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Icon(Icons.grid_view)
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'January 2020',
                      style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Explore the incoming world-class productions in\nthe Fjord Operahaus and reserve or buy the ticket.",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'For questions contact us at +47 46 70 40 32',
                    style: GoogleFonts.playfairDisplay(fontSize: 12),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                  thickness: 1,
                  endIndent: 93,
                  indent: 148,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '15',
                          style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38, top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 2,
                                width: 240,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 92),
                          child: Text(
                            'SAT',
                            style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 42),
                              child: Text(
                                'Anna Karenina',
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Anna Karenina has been called the greatest\nwork of Literature written. The\nNorwegian National Ballet is once again\ndancing Leo Tolstoy engaging and bitter...",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 48),
                              child: Row(
                                children: [
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF400B06),
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '16',
                          style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38, top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 2,
                                width: 234,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 92),
                          child: Text(
                            'SUN',
                            style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 84),
                              child: Text(
                                'Orbo Novo',
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Anna Karenina has been called the greatest\nwork of Literature written. The\nNorwegian National Ballet is once again\ndancing Leo Tolstoy engaging and bitter...",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 48),
                              child: Row(
                                children: [
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF400B06),
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '22',
                          style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 27, top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 2,
                                width: 240,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 92),
                          child: Text(
                            'SAT',
                            style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 42),
                              child: Text(
                                'Anna Karenina',
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Anna Karenina has been called the greatest\nwork of Literature written. The\nNorwegian National Ballet is once again\ndancing Leo Tolstoy engaging and bitter...",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 48),
                              child: Row(
                                children: [
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFF400B06),
                                        height: 1.5),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "BUY TICKETS",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[600],
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
