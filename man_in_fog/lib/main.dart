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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 33, top: 25),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: height * 0.89,
                  width: width * 0.91,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Assets/IMG/6220303824a1f.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: height * 0.89,
                  width: width * 0.91,
                  color: Color(0xff686861).withOpacity(0.7),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: height * 0.85,
                  width: width * 0.82,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.3, color: Colors.white),
                      left: BorderSide(width: 1.3, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, right: 50),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "/63\nATLANTIC",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        height: height * 0.00155),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          "LIFE IS REALLY SIMPLE,BUT WE INSIST\nON MAKING IT COMPLICATED",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: height * 0.00155),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.225,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.13,
                      ),
                      RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            "SCROLL",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
