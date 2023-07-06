import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplecalculator/AppColor.dart';
import 'package:simplecalculator/Button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator',
      theme: ThemeData(
        primaryColor: Appcolor.BGColor,
        hoverColor: Appcolor.Cyan,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = "";
  String result = "";
  String opreter = "";
  String his = '';
  double num1 = 0;
  double num2 = 0;
  var trimr;

  onClickBt(String BTText) {
    setState(
      () {
        if (BTText == "C") {
          equation = '';
          result = '';
        } else if (BTText != '=' && BTText != '%' && BTText != '+/-') {
          equation = equation + BTText;
        }
        if (BTText == '+' || BTText == '-' || BTText == '*' || BTText == '/') {
          opreter = BTText;
          log(opreter);
        } else if (BTText == '+/-') {
          equation = '-${equation}';
        } else if (BTText == '=') {
          log(equation);
          List trim = equation.split(opreter);
          num1 = double.parse(trim[0]);
          num2 = double.parse(trim[1]);
          if (equation.contains('+')) {
            result = (num1 + num2).toString();
          } else if (equation.contains('-')) {
            result = (num1 - num2).toString();
          } else if (equation.contains('*')) {
            result = (num1 * num2).toString();
          } else if (equation.contains('/')) {
            result = (num1 / num2).toString();
          }
          if (result.contains(".0") ||
              result.contains(".00") ||
              result.contains(".000") ||
              result.contains(".0000")) {
            trimr = result.split('.');
            log("message");
            result = trimr[0];
          }
          his = equation;
          equation = result;
        } else if (BTText == '%') {
          var trim = equation.split(opreter);
          num1 = double.parse(trim[0]);
          num2 = double.parse(trim[1]);
          if (equation.contains('+')) {
            result = (num1 + num2).toString();
          } else if (equation.contains('-')) {
            result = (num1 - num2).toString();
          } else if (equation.contains('*')) {
            result = (num1 * num2 / 100).toString();
          } else if (equation.contains('/')) {
            result = (num1 / num2 * 100).toString();
          }
          if (result.contains(".0000000")) {
            trimr = result.split('.');
            log("message");
            result = trimr[0];
          }
          his = equation;
          equation = result;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  his,
                  style: GoogleFonts.rubik(color: Appcolor.Grey, fontSize: 35),
                ),
                Text(
                  equation,
                  style: GoogleFonts.rubik(color: Appcolor.White, fontSize: 50),
                ),
                SizedBox(
                  height: height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Divider(
                        thickness: 3,
                        color: Appcolor.Grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FButton(
                              text: 'C',
                              TColor: Theme.of(context).hoverColor,
                              CallBack: onClickBt),
                          FButton(
                              text: '+/-',
                              TSize: 30,
                              TColor: Theme.of(context).hoverColor,
                              CallBack: onClickBt),
                          FButton(
                              text: '%',
                              TColor: Theme.of(context).hoverColor,
                              TSize: 30,
                              CallBack: onClickBt),
                          FButton(
                              text: '/',
                              TColor: Appcolor.Red,
                              TSize: 30,
                              CallBack: onClickBt),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FButton(text: '7', CallBack: onClickBt),
                          FButton(text: '8', CallBack: onClickBt),
                          FButton(text: '9', CallBack: onClickBt),
                          FButton(
                              text: '*',
                              TColor: Appcolor.Red,
                              TSize: 35,
                              CallBack: onClickBt),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FButton(text: '4', CallBack: onClickBt),
                          FButton(text: '5', CallBack: onClickBt),
                          FButton(text: '6', CallBack: onClickBt),
                          FButton(
                              text: '-',
                              TColor: Appcolor.Red,
                              TSize: 30,
                              CallBack: onClickBt),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FButton(text: '1', CallBack: onClickBt),
                          FButton(text: '2', CallBack: onClickBt),
                          FButton(text: '3', CallBack: onClickBt),
                          FButton(
                              text: '+',
                              TColor: Appcolor.Red,
                              TSize: 30,
                              CallBack: onClickBt),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FButton(text: '00', TSize: 30, CallBack: onClickBt),
                          FButton(text: '0', CallBack: onClickBt),
                          FButton(text: '.', CallBack: onClickBt),
                          FButton(
                              text: '=',
                              BTColor: Appcolor.Red,
                              TSize: 30,
                              elevation: 40,
                              CallBack: onClickBt),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
