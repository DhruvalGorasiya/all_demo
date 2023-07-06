import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List name = [
    'rajesh',
    'harsh',
    'abhi',
    'rohan',
    'ashish',
    'parth',
    'divyesh',
    'raj',
    'krish',
  ];
  List color = [
    Colors.red,
    Colors.blue,
    Colors.red,
    Colors.blue,
    Colors.red,
    Colors.blue,
    Colors.red,
    Colors.blue,
    Colors.red,
  ];
  String message = " ";

  late ScrollController _controller;

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent) {
      setState(() {
        message = "End";
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent) {
      setState(() {
        message = "Start";
      });
    }
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        actions: [Icon(Icons.arrow_forward_ios)],
      ),
      body: Center(
        child: ListView.builder(
          controller: _controller,
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) => Container(
            height: 100,
            color: color[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name[index]),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:),
    );
  }
}
