import 'package:flutter/material.dart';
import 'package:quiz_app/Que.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  List<Icon> iconsList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
              child: Text(
                questionsList[i].question,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )),
            Column(
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 60,
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    color: Colors.green,
                  ),
                  onTap: () {
                    if (true == questionsList[i].Answer) {
                      setState(() {
                        iconsList.add(Icon(Icons.check, color: Colors.green));
                        if (i < questionsList.length) i++;
                        if (iconsList.length > questionsList.length - 1) {
                          iconsList.clear();
                          i = 0;
                        }
                      });
                    } else {
                      setState(() {
                        iconsList.add(Icon(Icons.clear, color: Colors.red));
                        if (i < questionsList.length - 1) i++;
                        if (iconsList.length > questionsList.length) {
                          iconsList.clear();
                          i = 0;
                        }
                      });
                    }
                  },
                ),
                SizedBox(height: 8),
                InkWell(
                  child: Container(
                    height: 60,
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    color: Colors.red,
                  ),
                  onTap: () {
                    if (false == questionsList[i].Answer) {
                      setState(() {
                        iconsList.add(Icon(Icons.check, color: Colors.green));
                        if (i < questionsList.length - 1) i++;
                        if (iconsList.length > questionsList.length) {
                          iconsList.clear();
                          i = 0;
                        }
                      });
                    } else {
                      setState(() {
                        iconsList.add(Icon(Icons.clear, color: Colors.red));
                        if (i < questionsList.length - 1) i++;
                        if (iconsList.length > questionsList.length) {
                          iconsList.clear();
                          i = 0;
                        }
                      });
                    }
                  },
                ),
                Row(children: iconsList)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
