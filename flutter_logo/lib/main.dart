import 'package:flutter/material.dart';
import 'package:flutter_logo/Controller/TextField.dart';
import 'package:flutter_logo/SecondPage.dart';
import 'package:flutter_logo/utilits/AppString.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  bool eye = true;
  bool _EmailValidBool = false;
  bool _PhoneValidBool = false;
  bool _PassValidBool = false;
  RegExp regex = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");

  _EmailisValid() {
    _emailcontroller.text.isEmpty ||
            !_emailcontroller.text.contains("@") ||
            !_emailcontroller.text.contains(".")
        ? _EmailValidBool = true
        : _EmailValidBool = false;
  }

  _PhoneValid() {
    _phonecontroller.text.length == 10
        ? _PhoneValidBool = false
        : _PhoneValidBool = true;
  }

  _PassValid() {
    _passcontroller.text.isEmpty || !regex.hasMatch(_passcontroller.text)
        ? _PassValidBool = true
        : _PassValidBool = false;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "LogIn Page",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height * 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(Colors.amber, BlendMode.modulate),
                    child: FlutterLogo(
                      size: 130,
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textField(
                            controller: _phonecontroller,
                            obscure: false,
                            label: 'Phone',
                            prefixicon: Icons.phone,
                            Keyboard: TextInputType.phone,
                            error: _PhoneValidBool == true
                                ? "Phone Number Is Not Valid"
                                : null),
                        textField(
                            Keyboard: TextInputType.emailAddress,
                            error: _EmailValidBool == true
                                ? 'Email Is Not Valid'
                                : null,
                            prefixicon: Icons.email,
                            HintText: AppString.enterEmail,
                            controller: _emailcontroller,
                            obscure: false,
                            label: "Email"),
                        textField(
                          Keyboard: TextInputType.emailAddress,
                          controller: _passcontroller,
                          error: _PassValidBool == true
                              ? "Password Is Not Valid"
                              : null,
                          HintText: AppString.password,
                          prefixicon: Icons.lock,
                          suffixicon: IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  eye == false ? eye = true : eye = false;
                                },
                              );
                            },
                            icon: eye == false
                                ? Icon(Icons.remove_red_eye_outlined)
                                : Icon(Icons.remove_red_eye),
                          ),
                          obscure: eye,
                          label: 'Password',
                        ),
                        InkWell(
                          onTap: () {
                            print(_EmailValidBool.toString());
                            setState(
                              () {
                                _EmailisValid();
                                _PhoneValid();
                                _PassValid();
                                print(_PassValidBool.toString());
                                print(_PhoneValidBool.toString());
                                print(_EmailValidBool.toString());
                                if (_EmailValidBool == false &&
                                    _PhoneValidBool == false &&
                                    _PassValidBool == false) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SecondPage(
                                            Email: _emailcontroller.text,
                                            Pass: _passcontroller.text,
                                            Phone: _phonecontroller.text);
                                      },
                                    ),
                                  );
                                }
                              },
                            );
                          },
                          child: Container(
                            height: height * 0.08,
                            width: width * 1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                "SING IN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
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
          ),
        ),
      ),
    );
  }
}
