import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                setState(() {});
                number++;
              },
              child: Text("$number"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.blue,
              thickness: 10,
            );
          },
        ),
      ),
    );
  }
}
