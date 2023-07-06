import 'dart:convert';
import 'dart:developer';

import 'package:firstapi/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Photos> fetchPhotos() async {
    final responce = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/2'));
    if (responce.statusCode == 200) {
      return Photos.fromJson(jsonDecode(responce.body));
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: FutureBuilder<Photos>(
            future: fetchPhotos(),
            builder: (context, spt) {
              log(spt.data.toString());
              if (spt.hasData) {
                return Column(
                  children: [
                    Image.network(spt.data?.url ?? ''),
                    Image.network(spt.data?.thumbnailUrl ?? ''),
                    Text(
                      spt.data?.title ?? '',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      spt.data?.id.toString() ?? '',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                );
              } else if (spt.hasError) {
                return Text(spt.error.toString());
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
