import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('All Quotes'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: EdgeInsets.all(2.w),
            child: Container(
              height: 25.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 7.0,
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
