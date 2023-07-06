import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
              ),
              // Container(
              //   child: Image.asset(
              //     'assets/images/fff.jpg',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Text(
                'Image Lecture',
                style: GoogleFonts.redressed(
                  fontSize: 50,
                ),
              ),
              Text(
                'Image ',
                style: TextStyle(
                  fontSize: 50,
                  // fontFamily: 'Roboto',
                ),
              ),
              Text(
                'Image Lecture',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
