import 'package:flutter/material.dart';
import 'Page/WeatherPage/weather_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Weather(),
    ),
  );
}
