import 'package:flutter/material.dart';
import 'package:fontapp/Description.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FontApp(),
    ),
  );
}

class FontApp extends StatefulWidget {
  const FontApp({Key? key}) : super(key: key);

  @override
  State<FontApp> createState() => _FontAppState();
}

class _FontAppState extends State<FontApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Font App",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TB(
            text: Text(
              "BATMAN",
              style: GoogleFonts.caveatBrush(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            context: context,
            Index: 0,
          ),
          TB(
            text: Text(
              "Superman",
              style: GoogleFonts.niconne(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            context: context,
            Index: 1,
          ),
          TB(
            text: Text(
              "Wonder Woman",
              style: GoogleFonts.dawningOfANewDay(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            context: context,
            Index: 2,
          ),
          TB(
            text: Text(
              "AQUAMAN",
              style: GoogleFonts.creepster(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            context: context,
            Index: 3,
          ),
          TB(
            text: Text(
              "Steppenwolf",
              style: GoogleFonts.fingerPaint(fontSize: 35, color: Colors.black),
            ),
            context: context,
            Index: 4,
          ),
          TB(
            text: Text(
              "Cyborg",
              style: GoogleFonts.frijole(fontSize: 35, color: Colors.black),
            ),
            context: context,
            Index: 5,
          ),
          TB(
            text: Text(
              "THE FLASH",
              style: GoogleFonts.caveatBrush(fontSize: 35, color: Colors.black),
            ),
            context: context,
            Index: 6,
          ),
        ],
      ),
    );
  }
}

TB({required Widget text, required BuildContext context, required int Index}) {
  return Center(
    child: TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Description(index: Index);
            },
          ),
        );
      },
      child: text,
    ),
  );
}
