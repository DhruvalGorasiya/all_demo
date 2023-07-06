import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;

  void inc() {
    setState(() {
      i++;
    });
  }

  void dec() {
    setState(() {
      i--;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(Icons.remove),
              onPressed: dec,
            ),
            Text(
              "${i}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(Icons.add),
              onPressed: inc,
            ),
          ],
        ),
      )),
    );
  }
}
