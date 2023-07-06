import 'package:flutter/material.dart';
import 'package:my_life_cycle/School_name.dart';

class Date_of_Birth extends StatefulWidget {
  const Date_of_Birth({Key? key}) : super(key: key);

  @override
  _Date_of_BirthState createState() => _Date_of_BirthState();
}

class _Date_of_BirthState extends State<Date_of_Birth> {
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
                    return School_Name();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.green,
              height: 150,
              width: 500,
              child: Center(
                child: Text(
                  "Date Of Birth\nSecond july,2004",
                  textAlign: TextAlign.center,
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
