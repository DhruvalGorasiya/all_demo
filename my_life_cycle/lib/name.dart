import 'package:flutter/material.dart';
import 'package:my_life_cycle/date_of_birth.dart';

class namePage extends StatefulWidget {
  const namePage({Key? key}) : super(key: key);

  @override
  _namePageState createState() => _namePageState();
}

class _namePageState extends State<namePage> {
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
                    return Date_of_Birth();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.orange,
              height: 150,
              width: 500,
              child: Center(
                child: Text(
                  "name\nDhruval Gorasiya H",
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
