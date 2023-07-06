import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:music_player/First_Page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2500,
      splash: 'Asset/SplashIcon.png',
      nextScreen: MyApp(),
      splashIconSize: 200,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.blue,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
