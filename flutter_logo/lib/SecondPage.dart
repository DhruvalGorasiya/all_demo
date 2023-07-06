import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String Email;
  final String Pass;
  final String Phone;

  const SecondPage({
    Key? key,
    required this.Email,
    required this.Pass,
    required this.Phone,
  }) : super(key: key);

  @override
  State<SecondPage> createState() =>
      _SecondPageState(this.Email, this.Pass, this.Phone);
}

class _SecondPageState extends State<SecondPage> {
  final String Email;
  final String Pass;
  final String Phone;

  _SecondPageState(this.Email, this.Pass, this.Phone);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.amber, BlendMode.modulate),
                  child: FlutterLogo(
                    size: 130,
                  ),
                ),
                Container(
                  height: height * 0.45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width * 1,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Icon(Icons.phone,
                                    color: Colors.green, size: 25),
                              ),
                              Text(
                                Phone,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width * 1,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Icon(Icons.email,
                                    color: Colors.green, size: 25),
                              ),
                              Text(
                                Email,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: width * 1,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 20),
                                child: Icon(Icons.lock,
                                    color: Colors.green, size: 25),
                              ),
                              Text(
                                Pass,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.08,
                        width: width * 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            "Result",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
