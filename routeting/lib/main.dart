import 'package:flutter/material.dart';
import 'package:routeting/view/first_page/first_page_view.dart';
import 'package:routeting/view/second_page/second_view.dart';
import 'package:routeting/view/third_page/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/SecondPage': (context) => SecondPage(
              name: '',
              listName: ['1', '2', '3'],
            ),
        '/ThirdPage': (context) => ThirdPage(),
      },
    );
  }
}
