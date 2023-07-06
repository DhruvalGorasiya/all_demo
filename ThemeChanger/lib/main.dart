import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themechanger/Theme.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    print(Light.toString());
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: Light,
      home: MyTheme(),
    );
  }
}

class MyTheme extends StatefulWidget {
  const MyTheme({Key? key}) : super();

  @override
  State<MyTheme> createState() => _MyThemeState();
}

class _MyThemeState extends State<MyTheme> {
  @override
  void initState() {
    super.initState();
    setState(() {
      log(
        Light.toString(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).backgroundColor,
                Theme.of(context).primaryColor
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    print('1');
                    Get.changeThemeMode(ThemeMode.dark);
                    ChangeTheme(1);
                    // initState();
                  });
                },
                child: Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff399354),
                        Color(0xff58bde0),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Get.changeThemeMode(ThemeMode.dark);
                    print("2");
                    ChangeTheme(2);
                    // initState();
                  });
                },
                child: Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff5baaff),
                        Color(0xff001e90),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Get.changeTheme(CTheme.pink);
                    print("3");
                    ChangeTheme(3);
                    // initState();
                  });
                },
                child: Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffff00cc),
                        Color(0xff333399),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Get.changeThemeMode(ThemeMode.dark);
                    print('4');
                    ChangeTheme(4);
                    // initState();
                  });
                },
                child: Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff6cf5a),
                        Color(0xffdc6a34),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
