import 'package:flutter/material.dart';
import 'package:my_life_cycle/name.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
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
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return namePage();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.blue,
              height: 150,
              width: 500,
              child: Center(
                child: Text(
                  "My Life Style",
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
