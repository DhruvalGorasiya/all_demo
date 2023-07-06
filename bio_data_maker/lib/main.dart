import 'dart:io';
import 'package:bio_data_maker/variable_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'stapper_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  validate() {
    if ((image?.path ?? '') != '' && name.text.length >= 8) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Stapper(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: InkWell(
                onTap: () async {
                  image = await picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
                child: CircleAvatar(
                  radius: 95,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: (image?.path ?? '') != ''
                        ? FileImage(
                            File(image?.path ?? ''),
                          )
                        : null,
                  ),
                ),
              ),
            ),
            TextFormField(
              style: const TextStyle(fontSize: 22),
              controller: name,
              decoration: const InputDecoration(
                hintText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: validate,
              child: const Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }
}
