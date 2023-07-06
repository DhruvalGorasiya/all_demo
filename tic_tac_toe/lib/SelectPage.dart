import 'package:flutter/material.dart';
import 'package:tic_tac_toe/DoublePlayer/Double%20Player.dart';
import 'package:tic_tac_toe/SinglePlayer/SinglePlayer.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffF56E6E), Color(0xff8aea65)],
                stops: [0.1, 10.0],
              ),
            ),
          ),
          title: Text(
            'Tic Tac Toe',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Container(
          height: height * 1,
          width: width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SinglePlayer();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Color(0xffF56E6E), Color(0xff8aea65)],
                      stops: [0.1, 10.0],
                    ),
                  ),
                  height: height * 0.06,
                  width: width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.man,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        "Single Player",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DoublePlayer();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [Color(0xffF56E6E), Color(0xff8aea65)],
                      stops: [0.1, 10.0],
                    ),
                  ),
                  height: height * 0.06,
                  width: width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.man,
                            size: 25,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.man,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Double Player",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
