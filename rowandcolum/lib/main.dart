import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: Text(
                "Row/Col",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              )),
              color: Colors.orange,
              height: 120,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 120,
              width: 500,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Cross Axis Size",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Main Axis Alignment",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_back, size: 35),
                        Text(
                          "row",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 35,
                        ),
                        Icon(Icons.arrow_back, size: 35),
                        Text(
                          "space\naround",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.8, color: Colors.black),
                  bottom: BorderSide(width: 0.8, color: Colors.black),
                ),
                color: Colors.orange,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 120,
              width: 500,
              color: Colors.orange,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Main Axis Size",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Corss Axis Alignment",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_back, size: 35),
                        Text(
                          "max",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 35,
                        ),
                        Icon(Icons.arrow_back, size: 35),
                        Text(
                          "stretch",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 384,
              width: 500,
              color: Colors.yellow,
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.stars,
                        size: 90,
                      ),
                      Icon(
                        Icons.stars,
                        size: 170,
                      ),
                      Icon(
                        Icons.stars,
                        size: 90,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
