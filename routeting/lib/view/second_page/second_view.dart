import 'package:flutter/material.dart';
import 'package:routeting/model/argument_model.dart';

import '../../utilits/colors.dart';

class SecondPage extends StatefulWidget {
  final String name;
  final List listName;

  const SecondPage({required this.name, required this.listName});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              '/ThirdPage',
              arguments: ArgumentModel(
                name: 'Third page argument',
                listName: ['name', 'student', 'class'],
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: AppColors.redColor,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(widget.listName[0]),
                  Text(widget.listName[1]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
