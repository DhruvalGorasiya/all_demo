import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: DemoApp(),
    ),
  );
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.2,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: width * 0.5,
                color: Colors.orangeAccent,
              ),
              Expanded(
                  child: Container(
                color: Colors.blue,
              ))
            ],
          ),
        ),
        Expanded(child: Container())
      ],
    );
  }
}
