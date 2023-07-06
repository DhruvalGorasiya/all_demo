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
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height * 0.35,
              width: width * 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.1,
                      0.8,
                    ],
                    colors: [
                      Colors.blueGrey,
                      Colors.black,
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back,
                            size: height * 0.035, color: Colors.white),
                        Column(
                          children: [
                            Text(
                              "Hi, Pawan Kumar",
                              style: TextStyle(
                                  fontSize: height * 0.035,
                                  color: Colors.white),
                            ),
                            Text(
                              "Welcome to the the Flutter UIKit",
                              style: TextStyle(
                                  fontSize: height * 0.02, color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert,
                            size: height * 0.035, color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Icon(Icons.search),
                          ),
                          Text(
                            "Find our product",
                            style: TextStyle(
                                color: Colors.grey, fontSize: height * 0.025),
                          ),
                          SizedBox(width: width * 0.3),
                          Icon(Icons.menu),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: height * 0.4,
                      width: width * 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              icons(context,
                                  text: "Frinds",
                                  color: Colors.blue,
                                  icon: Icons.person),
                              icons(context,
                                  text: "Groups",
                                  color: Colors.orange,
                                  icon: Icons.group_sharp),
                              icons(context,
                                  text: "Nearby",
                                  color: Colors.purple,
                                  icon: Icons.location_pin),
                              icons(context,
                                  text: "Moment",
                                  color: Colors.blue[900],
                                  icon: Icons.near_me),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              icons(context,
                                  text: "Albums",
                                  color: Colors.red,
                                  icon: Icons.image),
                              icons(context,
                                  text: "Likes",
                                  color: Colors.green[800],
                                  icon: Icons.thumb_up),
                              icons(context,
                                  text: "Articles",
                                  color: Colors.lime,
                                  icon: Icons.credit_card_outlined),
                              icons(context,
                                  text: "Reviews",
                                  color: Colors.orangeAccent,
                                  icon: Icons.notifications),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              icons(context,
                                  text: "Sports",
                                  color: Colors.blue[200],
                                  icon: Icons.person),
                              icons(context,
                                  text: "Fav",
                                  color: Colors.redAccent,
                                  icon: Icons.star),
                              icons(context,
                                  text: "Blogs",
                                  color: Colors.pink,
                                  icon: Icons.event),
                              icons(context,
                                  text: "Wallets",
                                  color: Colors.brown[700],
                                  icon: Icons.account_balance_wallet_rounded),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      height: height * 0.15,
                      width: width * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "₹ 1000",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 20),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: height * 0.05,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "5oo Points",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

icons(
  BuildContext context, {
  text,
  IconData? icon = null,
  Color? color = null,
}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: height * 0.08,
        width: width * 0.13,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      Text(text)
    ],
  );
}
