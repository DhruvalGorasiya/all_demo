import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(
            Icons.search,
            size: height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.more_vert,
              size: height * 0.04,
            ),
          )
        ],
        elevation: 7,
        title: Text(
          "Pay",
          style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.03,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Center(
              child: Text(
                "Pay Your Bills",
                style: TextStyle(
                    fontSize: height * 0.03,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fun1(context, icon: Icons.power, text: "ELECTRICITY"),
              fun1(context, icon: Icons.star, text: "WATER"),
              fun1(context, icon: Icons.phone_android, text: "MOBILE"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                fun1(context, icon: Icons.call, text: "LANDLINE"),
                fun1(context, icon: Icons.tv, text: "CABLE TV"),
                fun1(context, icon: Icons.stars, text: "INTERNET"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Center(
              child: Text(
                "Purchase Tickets",
                style: TextStyle(
                    fontSize: height * 0.03,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fun1(context, icon: Icons.movie_filter_outlined, text: "MOVIE"),
              fun1(context, icon: Icons.event, text: "EVENT"),
              fun1(context,
                  icon: Icons.sports_baseball_outlined, text: "SPORT"),
            ],
          ),
        ],
      ),
    );
  }
}

fun1(BuildContext context, {IconData? icon = null, text}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    height: height * 0.17,
    width: width * 0.3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.grey[300],
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Icon(
        icon,
        color: Colors.blue[900],
        size: height * 0.05,
      ),
      Text(
        text,
      )
    ]),
  );
}
