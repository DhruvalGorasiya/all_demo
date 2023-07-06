import 'dart:convert';
import 'dart:developer';

import 'package:apicalling/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyDemo extends StatefulWidget {
  const MyDemo({Key? key}) : super(key: key);

  @override
  State<MyDemo> createState() => _MyDemoState();
}

class _MyDemoState extends State<MyDemo> {
  Future<Photos> fetchPhotos() async {
    final responce = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/2'));
    if (responce.statusCode == 200) {
      return Photos.fromJson(jsonDecode(responce.body));
    } else {
      throw Exception('Failed to load photos');
    }
  }

  LoginModel model = LoginModel();
  Future loginUser() async {
    /// Body Row data
    ///   Map<String, dynamic>
    final responce = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/photos/2'),
      body: json.encode({
        'phone_with_code': '+918980606960',
        'otp': '602496',
        'fcm_token': 'sqwsqwewq'
      }),
      headers: {},
    );
    log(responce.statusCode.toString());
    log(responce.body);

    /// Body Row data

    /// Body Form Data
    /// Map<String, string>,,, Image, docs
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://qride.tk/public/api/customer/login'));
    request.fields.addAll(
      {
        'phone_with_code': '+918980606960',
        'otp': '296181',
        'fcm_token': 'asdfasdfasdf'
      },
    );

    request.headers.addAll({});

    http.StreamedResponse response = await request.send();

    String data = await response.stream.bytesToString();

    log('Response Success ~~>> ${response.statusCode.toString()}');
    log(data.toString());

    /// Body Form Data

    if (response.statusCode == 200) {
      model = LoginModel.fromJson(jsonDecode(data));
      log(model.toJson().toString());
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    loginUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(model.data?.email ?? ''),
              Text(model.data?.phoneNumber ?? ''),
              Text(model.data?.token ?? ''),
              FutureBuilder<Photos>(
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
            ],
          ),
        ),
      ),
    );
  }
}
