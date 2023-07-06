import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(

                color: Colors.red,
                height: 100,
                width: 360,
                //  Center(
                //   child: Text(
                //     "Ayush",
                //     style: TextStyle(
                //       color: Colors.black,
                //     ),
                //   ),
                // ),
              ),
            ),
            SizedBox(height: 100,),
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 320,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.yellow,
                height: 100,
                width: 320,
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}