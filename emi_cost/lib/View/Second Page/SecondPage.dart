import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SecondPage extends StatefulWidget {
  final Total;

  const SecondPage({Key? key, required this.Total}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState(Total);
}

class _SecondPageState extends State<SecondPage> {
  _SecondPageState(this.Total);

  final Total;
  var Formatter = NumberFormat("#,##,###");
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 15,
                offset: Offset(0, 0), // Shadow position
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("Assets/Img/home.jpg"),
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: Color(0xff2e38cd).withOpacity(0.8),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your lone EMI is",
                      style: GoogleFonts.ubuntuMono(
                          color: Colors.white, fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹${Formatter.format(Total)}",
                            style: GoogleFonts.ubuntuMono(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " per\n month",
                            style: GoogleFonts.ubuntuMono(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          color: Color(0xff050c90),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Finish",
                            style: GoogleFonts.ubuntuMono(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
