import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static List<Color> color = [
    Colors.black38,
    Colors.white54,
    Colors.black38,
    Colors.white54,
    Colors.black38,
    Colors.white54,
    Colors.black38,
    Colors.white54,
    Colors.black38,
    Colors.white54,
  ];
  static List<Color> TextColor = [
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
  ];
  static List<String> name = [
    "Sunder Pichai",
    "Bill Gets",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayan",
    "Daniel Zhang",
    "Harald Krüger",
    "Michael Dell",
    "Bob Swan"
  ];
  static List ImageUrl = [
    "assets/IMG/vpavic_171003_2029_0067.5.jpg",
    "assets/IMG/104891709-Bill_Gates_the_co-Founder.jpg",
    "assets/IMG/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg",
    "assets/IMG/mukesh-ambani.jpg",
    "assets/IMG/1128955260.jpg.0.jpg",
    "assets/IMG/adobeceo.jpg",
    "assets/IMG/Daniel-for-website.jpg",
    "assets/IMG/2015-597760harald-krueger1.jpg",
    "assets/IMG/michael-dell-dell-technologies-world.jpg",
    "assets/IMG/Bob_Swan_01.jpg",
  ];
  static List<String> SubName = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZON",
    "RELIANCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  final List<CeoDetails> CeoData = List.generate(
    name.length,
    (index) => CeoDetails(
      "${name[index]}",
      "${ImageUrl[index]}",
      "${SubName[index]}",
      color[index],
      TextColor[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.06,
        title: Text(
          "CEO of MNC's",
          style: GoogleFonts.openSans(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[100],
      ),
      body: SafeArea(
        child: Container(
          height: height * 2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightBlue, Colors.purple],
            ),
          ),
          child: ListView.builder(
            itemCount: CeoData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 7.5, right: 15, left: 15, bottom: 7.5),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: CeoData[index].color,
                  child: ListTile(
                    title: Text(
                      CeoData[index].name,
                      style: GoogleFonts.openSans(
                          fontSize: 18, color: CeoData[index].TextColor),
                    ),
                    subtitle: Text(
                      CeoData[index].SubName,
                      style: GoogleFonts.openSans(
                          fontSize: 12, color: CeoData[index].TextColor),
                    ),
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(CeoData[index].ImageUrl),
                    ),
                    trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Stack(
                          children: [Icon(Icons.play_circle_outline)],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CeoDetails {
  final String name, ImageUrl, SubName;
  final Color color, TextColor;

  CeoDetails(
      this.name, this.ImageUrl, this.SubName, this.color, this.TextColor);
}
