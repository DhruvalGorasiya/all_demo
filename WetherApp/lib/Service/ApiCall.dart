import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wetherapp/Model/weather_model.dart';

Future<WeatherModel> fetchWeather() async {
  final responce = await http.get(
    Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=c7f8818557714f42a0750201220904&q=${Country.text}&aqi=no'),
  );
  log(responce.body.toString());
  if (responce.statusCode == 200) {
    return WeatherModel.fromJson(
      jsonDecode(responce.body),
    );
  } else {
    throw Exception('Failed To load');
  }
}

TextEditingController Country = TextEditingController(text: 'india');
