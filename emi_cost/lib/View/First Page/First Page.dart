import 'dart:math';

import 'package:emi_cost/View/Second%20Page/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var Formatter = NumberFormat("#,##,###");
  double loan_amount = 0;
  double interest = 0;
  double year = 0;

  double Emi() {
    double A = 0.0;
    double P = loan_amount;
    double r = interest / 12 / 100;
    double n = year * 12;

    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));

    if (A > 0 && !A.isInfinite) {
      return A;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          elevation: 0,
          backgroundColor: Color(0xff2E04A0).withOpacity(1),
          child: ListView(
            children: [
              ListTile(
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Home",
                  style:
                      GoogleFonts.ubuntuMono(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Text(
                  "Profile",
                  style:
                      GoogleFonts.ubuntuMono(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Text(
                  "Logout",
                  style:
                      GoogleFonts.ubuntuMono(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: height * 0.5,
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 20),
                              child: Builder(
                                builder: (context) => IconButton(
                                  icon: Icon(Icons.menu,
                                      color: Colors.white, size: 25),
                                  onPressed: () =>
                                      Scaffold.of(context).openDrawer(),
                                ),
                              ),
                            ),
                            Text(
                              "EMI CALCULATOR",
                              style: GoogleFonts.ubuntuMono(
                                  fontSize: 25, color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Text(
                          "Your lone EMI is",
                          style: GoogleFonts.ubuntuMono(
                              color: Colors.white, fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "₹${Formatter.format(Emi())}",
                            style: GoogleFonts.ubuntuMono(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "per month",
                          style: GoogleFonts.ubuntuMono(
                              color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 15,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        title: Text(
                          "Loan Amount",
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 20, color: Colors.grey),
                        ),
                        trailing: Text(
                          Formatter.format(loan_amount),
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 30, color: Colors.grey),
                        ),
                      ),
                      Slider(
                        thumbColor: Colors.pink,
                        value: loan_amount,
                        divisions: 100,
                        min: 0,
                        max: 1000000,
                        // onChangeStart: (){},
                        // onChangeEnd: (){},
                        activeColor: Color(0xffc7c7c7),
                        inactiveColor: Color(0xffc7c7c7),
                        label: loan_amount.toStringAsFixed(0),
                        onChanged: (double val) {
                          setState(
                            () {
                              loan_amount = val;
                            },
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Interest Rate",
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 20, color: Colors.grey),
                        ),
                        trailing: Text(
                          "${interest.toStringAsFixed(1)}%",
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 30, color: Colors.grey),
                        ),
                      ),
                      Slider(
                        label: interest.toStringAsFixed(1),
                        thumbColor: Colors.pink,
                        divisions: 200,
                        value: interest,
                        min: 0,
                        max: 100,
                        // onChangeStart: (){},
                        // onChangeEnd: (){},
                        activeColor: Color(0xffc7c7c7),
                        inactiveColor: Color(0xffc7c7c7),
                        onChanged: (double val) {
                          setState(
                            () {
                              interest = val;
                            },
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Interest Rate",
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 20, color: Colors.grey),
                        ),
                        trailing: Text(
                          "${year.toStringAsFixed(0)} Years",
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 30, color: Colors.grey),
                        ),
                      ),
                      Slider(
                        label: year.toStringAsFixed(0),
                        thumbColor: Colors.pink,
                        value: year,
                        min: 0,
                        max: 50,
                        // onChangeStart: (){},
                        // onChangeEnd: (){},
                        activeColor: Color(0xffc7c7c7),
                        inactiveColor: Color(0xffc7c7c7),
                        onChanged: (double val) {
                          setState(
                            () {
                              year = val;
                            },
                          );
                        },
                      ),
                      InkWell(
                        onTap: () {
                          double Totle = Emi();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return SecondPage(
                                  Total: Totle,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: height * 0.07,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            color: Color(0xff2E04A0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Calculate",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
