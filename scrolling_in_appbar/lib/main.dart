import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    controller.addListener();
    log("message");
  }

  List name = [
    "Container1",
    "Container2",
    "Container3",
    "Container4",
    "Container5",
    "Container6"
  ];
  List<Color> color = [
    Colors.orange,
    Colors.white,
    Colors.blue,
    Colors.orange,
    Colors.white,
    Colors.blue,
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Start"),
        ),
        body: SafeArea(
          child: ListView.builder(
            controller: controller,
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                color: color[index],
                child: Center(child: Text('Entry ${name[index]}')),
              );
            },
          ),
        ),
      ),
    );
  }
}
