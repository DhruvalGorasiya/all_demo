import 'package:flutter/material.dart';
import 'package:fontapp/Model.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final index;

  const Description({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Description",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height * 1,
          width: width * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff0F2027),
                Color(0xff203A43),
                Color(0xff2C5364),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  Des[index].name,
                  style: GoogleFonts.ubuntu(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  Des[index].PAGE,
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    color: Colors.white38,
                  ),
                ),
                Container(
                  height: height * 0.55,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Des[index].IMG),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description",
                    style: GoogleFonts.ubuntu(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  Des[index].Des,
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
