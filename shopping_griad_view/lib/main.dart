import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static List<String> name = [
    "SHOES",
    "TSHIRTS",
    "TOP",
    "BLAZER",
    "HODIE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "WATCH",
    "SHIRT",
  ];
  static List<String> ImgUrl = [
    "assets/IMG/shoes.png",
    "assets/IMG/d555-honolulu-surf-t-shirt-4615-1-p[ekm]467x500[ekm].png",
    "assets/IMG/girls-top-500x500.png",
    "assets/IMG/ilford-county-blazer1193.png",
    "assets/IMG/CTK121_newnavy_flat_back_98FCF32DF6ED8.png",
    "assets/IMG/fb-sister-kimi-skinny-push-up-467x500.png",
    "assets/IMG/rowan-tree-grey-shorts-black-t-shirt-set-8418-p[ekm]342x500[ekm].png",
    "assets/IMG/puma-eagle-point-mens-sports-poly-full-zip-track-jacket-grey-yellow-15616-p[ekm]467x500[ekm].png",
    "assets/IMG/TownCat-Women-s-Loose-Casual-Long-Sleeved-Open-Front-Breathable-Cardigans-1-467x500.png",
    "assets/IMG/ST281_darkgreyheather_flat_front_76_5AB68C03EE5BC.png",
    "assets/IMG/images.png",
    "assets/IMG/b271f77ad36c9c3eed0e6fc6533d15e9.image.467x500.png",
  ];
  static List<String> rating = [
    "5.0",
    "4.1",
    "4.9",
    "4.2",
    "4.7",
    "4.5",
    "4.8",
    "4.8",
    "4.2",
    "4.1",
    "4.3",
    "4.0",
  ];
  static List<String> prize = [
    "\$30.33",
    "\$52.00",
    "\$40.00",
    "\$99.99",
    "\$70.00",
    "\$72.30",
    "\$56.27",
    "\$60.90",
    "\$90.99",
    "\$45.90",
    "\$99.99",
    "\$25.33",
  ];

  final List<ShoppingDetails> ShoppingData = List.generate(
    name.length,
    (index) => ShoppingDetails("${name[index]}", "${rating[index]}",
        "${prize[index]}", "${ImgUrl[index]}"),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        centerTitle: true,
        elevation: 0,
        title: Text("SHOPPING GALLERY UI"),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.lightBlue, Colors.purple],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List<Widget>.generate(
                ShoppingData.length,
                (index) {
                  return GridTile(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset(ShoppingData[index].ImgUrl  )),
                          Container(
                            height: height * 0.045,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    ShoppingData[index].rating,
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: height * 0.06,
                              width: width * 1,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ShoppingData[index].name,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      ShoppingData[index].prize,
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShoppingDetails {
  final String name, rating, prize, ImgUrl;

  ShoppingDetails(this.name, this.rating, this.prize, this.ImgUrl);
}
