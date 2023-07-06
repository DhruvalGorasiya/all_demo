import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: imgUi(),
    ),
  );
}

class imgUi extends StatelessWidget {
  const imgUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new AssetImage(
                        "imges/tim-mossholder-J0sMjGu6jvQ-unsplash.jpg.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 70),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          border: Border.all(
                              color: Colors.white60,
                              width: 5,
                              style: BorderStyle.solid)),
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white60,
                        size: 140,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Enter Email",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Enter Password",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.white,
                  indent: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Container(
                    height: 60,
                    width: 500,
                    child: Center(
                        child: Text(
                      "Sing In",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(500),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Don't have an account? Sing Up",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
