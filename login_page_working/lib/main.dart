import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.165,
              width: MediaQuery.of(context).size.width * 1,
              // color: Colors.yellow,
              child: Center(
                child: Text(
                  'Qrcty',
                  style: TextStyle(
                      fontFamily: "Dancing_Script",
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.13,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontFamily: "Opensans",
                              fontWeight: FontWeight.w600,
                              color: Colors.purple,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(color: Colors.purple, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: "Opensans",
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.16,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.black26,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.045,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.grey[400],
                                  size: 23,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.0345,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Username",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.045,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.grey[400],
                                  size: 23,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.0345,
                              width: MediaQuery.of(context).size.width * 0.6361,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.075,
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey[400],
                                size: 23,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "-or Login with-",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(
                            Icons.stars_outlined,
                            color: Colors.grey[400],
                            size: 35,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Icon(
                            Icons.facebook_rounded,
                            color: Colors.grey[400],
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 15,
                                      fontFamily: "Redressed"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.grey[400],
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.3,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.purple,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "OpenSans",
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
