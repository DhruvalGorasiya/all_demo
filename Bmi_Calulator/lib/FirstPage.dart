import 'dart:math';

import 'package:bmi_calulator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double Height = 0;
  double Weight = 0;
  double Age = 0;
  double Bmi = 0;
  Color Male = Color(0xff2e374b);
  Color FeMale = Color(0xff636880);

  void updateColor(int i) {
    if (i == 1) {
      if (Male == Color(0xff636880)) {
        Male = Color(0xff2e374b);
        FeMale = Color(0xff636880);
      } else {
        Male = Color(0xff636880);
        FeMale = Color(0xff2e374b);
      }
    } else {
      if (FeMale == Color(0xff636880)) {
        FeMale = Color(0xff2e374b);
        Male = Color(0xff636880);
      } else {
        FeMale = Color(0xff636880);
        Male = Color(0xff2e374b);
      }
    }
  }

  double BmiCal() {
    Bmi = Weight / pow(Height / 100, 2);
    return Bmi;
  }

  String resultText() {
    if (Bmi >= 25.0) {
      return "OVERWEIGHT";
    } else if (Bmi >= 18.5) {
      return 'NORMAL';
    }
    return 'UNDERWEIGHT';
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff00112B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                updateColor(1);
                              },
                            );
                          },
                          child: Container(
                            height: height * 0.24,
                            width: width * 0.44,
                            decoration: BoxDecoration(
                              color: Male,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.male_rounded,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              updateColor(2);
                            });
                          },
                          child: Container(
                            height: height * 0.24,
                            width: width * 0.44,
                            decoration: BoxDecoration(
                              color: FeMale,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.female_rounded,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: height * 0.24,
                      width: width * 1,
                      decoration: BoxDecoration(
                        color: Color(0xff2e374b),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "${Height.toStringAsFixed(0)}",
                              style: GoogleFonts.ubuntu(
                                  fontSize: 50, fontWeight: FontWeight.w900),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: "cm",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            thumbColor: Colors.redAccent,
                            value: Height,
                            divisions: 300,
                            min: 0,
                            max: 300,
                            activeColor: Color(0xffffffff),
                            inactiveColor: Color(0xffbbbbbb),
                            label: Height.toStringAsFixed(0),
                            onChanged: (double val) {
                              setState(
                                () {
                                  Height = val;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.24,
                          width: width * 0.44,
                          decoration: BoxDecoration(
                            color: Color(0xff2e374b),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "WEIGHT",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "${Weight.toStringAsFixed(0)}",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Color(0xff636880),
                                    elevation: 10,
                                    onPressed: () {
                                      setState(() {
                                        if (Weight >= 1) {
                                          Weight--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Color(0xff636880),
                                    elevation: 10,
                                    onPressed: () {
                                      setState(() {
                                        if (Weight <= 99) {
                                          Weight++;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: height * 0.24,
                          width: width * 0.44,
                          decoration: BoxDecoration(
                            color: Color(0xff2e374b),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Age",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                "${Age.toStringAsFixed(0)}",
                                style: GoogleFonts.ubuntu(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Color(0xff636880),
                                    elevation: 10,
                                    onPressed: () {
                                      setState(() {
                                        if (Age >= 1) {
                                          Age--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: Color(0xff636880),
                                    elevation: 10,
                                    onPressed: () {
                                      setState(() {
                                        if (Age <= 99) {
                                          Age++;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Color(0xff00112B),
                      title: Text(
                        "Result",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                      content: Container(
                        height: height * 0.3,
                        width: width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              resultText(),
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${BmiCal().toStringAsFixed(1)}",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                              ),
                              height: height * 0.08,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "Calculate Again",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: Container(
                height: height * 0.08,
                color: Colors.redAccent,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
