import 'package:flutter/material.dart';
import 'dart:math' as math;

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
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ScrollConfiguration(
      //   behavior: MyBehavior(),
      //   child: GridView.builder(
      //     itemCount: 20,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       childAspectRatio: MediaQuery.of(context).size.width /
      //           (MediaQuery.of(context).size.height / 1.9),
      //     ),
      //     itemBuilder: (BuildContext context, index) {
      //       return Container(
      //         color: Colors.red,
      //         height: 100,
      //       );
      //     },
      //   ),
      // ),
      body: Transform.rotate(
        angle: 360 * math.pi / 180,
        child: Center(
          child: Icon(
            Icons.arrow_back,
            size: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
