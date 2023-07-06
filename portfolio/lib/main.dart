import 'package:flutter/material.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container
        (decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/2.jpg"),
    fit: BoxFit.cover,
    ),
    ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const CircleAvatar(radius: 50, backgroundImage: AssetImage("images/user.png"),),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("Your Name", style: TextStyle(fontSize: 30,color: Colors.white ,fontFamily: "Luxurious")),
                      Text("Portfolio", style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Luxurious"))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.school,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "AD-TECH",
                          style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Mochiy"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.computer,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Portofolio App",
                          style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Mochiy"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.location_searching,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Location OF School",
                          style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Mochiy"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Ad-Tech@Email.Com",
                          style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Mochiy"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "SCHOOL NAME",
                          style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: "Mochiy"),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text("I am a student of B.C.A I am a Trying To Learn flutter Devloping In Android Studio,This App Devlope By Me I am Trying To Make More Best App In Flutter. Thanks For Reading",style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: "SedgwickAve"),),
              ),
            ],
          ),
        ),
        ),
      );

  }
}
