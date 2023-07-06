import 'package:flutter/material.dart';
import 'package:routeting/utilits/colors.dart';
import 'package:routeting/utilits/string.dart';
import 'package:routeting/view/second_page/second_view.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SecondPage(
                    name: 'Yash',
                    listName: ['AdTech', 'Company'],
                  );
                },
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(20),
            color: AppColors.redColor,
            child: Text(
              AppString.firstView,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
