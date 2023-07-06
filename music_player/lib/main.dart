import 'package:flutter/material.dart';
import 'package:music_player/First_Page.dart';
import 'package:music_player/SplashScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  return runApp(
    Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splashscreen(),
        );
      },
    ),
  );
}
