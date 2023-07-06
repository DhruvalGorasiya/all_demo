import 'dart:developer';
import 'package:flutter/material.dart';
import 'sql_Function.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> allData = [];

  void refreshData() async {
    final data = await SqLHelper.getItems();
    allData = data;
    setState(() {});
    log(allData.toString());
  }

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Enter a Name',
                  labelText: 'name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter a Email',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (_, i) {
                    return ListTile(
                      title: Text(allData[i]['name']),
                      subtitle: Text(allData[i]['email']),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                await SqLHelper.updateItems(
                                    allData[i]['id'], name.text, email.text);
                                refreshData();
                              },
                              child: const Icon(Icons.edit),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () async {
                                await SqLHelper.deleteItems(allData[i]['id']);
                                refreshData();
                              },
                              child: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await SqLHelper.addItems(name: name.text, email: email.text);
          refreshData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
