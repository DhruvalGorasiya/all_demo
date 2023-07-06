import 'package:flutter/material.dart';
import 'package:my_life_cycle/main.dart';

class School_Name extends StatefulWidget {
  const School_Name({Key? key}) : super(key: key);

  @override
  _School_NameState createState() => _School_NameState();
}

class _School_NameState extends State<School_Name> {
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
                    return MyApp();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.red,
              height: 150,
              width: 500,
              child: Center(
                child: Text(
                  "School\nAshaDeep-1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
