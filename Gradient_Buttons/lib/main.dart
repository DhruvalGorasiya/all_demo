import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFF512F),
                        Color(0xffDD2476),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff00dbde),
                        Color(0xfffe72ff),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFDFC47),
                        Color(0xff24FE41),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff9CECFB),
                        Color(0xff65C7F7),
                        Color(0xff4589ff),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff00C9FF),
                        Color(0xff92FE9D),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffee0979),
                        Color(0xffff6a00),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFDC830),
                        Color(0xffF37335),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffff00cc),
                        Color(0xff333399),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.25,
                  width: wight * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff7F00FF),
                        Color(0xffE100FF),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
