import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          elevation: 700,
          title: Text(
            "FRUITS",
            style: TextStyle(letterSpacing: 3, fontWeight: FontWeight.w300),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Apple",
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
              Text(
                "Banana",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Text(
                "Mango",
                style: TextStyle(fontSize: 30, color: Colors.purple),
              ),
              Text(
                "Guava",
                style: TextStyle(fontSize: 30, color: Colors.tealAccent),
              ),
              Text(
                "Orange",
                style: TextStyle(fontSize: 30, color: Colors.deepPurpleAccent),
              ),
              Text(
                "Pineapple",
                style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
              ),
              Text(
                "Papaya",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
              Text(
                "Cherry",
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
