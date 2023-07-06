import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int dice1 = 1;
  int dice2 = 1;

  rolldice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Expanded(
            child: GestureDetector(
              onTap: () {
                rolldice();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage("Asset/IMG/Dice $dice1.png"),
                  ),
                  Image(
                    image: AssetImage("Asset/IMG/Dice $dice2.png"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
