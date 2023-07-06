import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: uiSearch(),
  ));
}

class uiSearch extends StatelessWidget {
  const uiSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Search"),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(Icons.search, size: 125),
          ),
          Text(
            "No Result",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          Text(
            "Try a More general keyword",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
