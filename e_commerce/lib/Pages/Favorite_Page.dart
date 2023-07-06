import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late final Favorite = favorite;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.BlueAccent,
        elevation: 0,
        title: Text("WishList"),
      ),
      body: SafeArea(
        child: Favorite.isEmpty
            ? Center(
                child: Text(
                  "Wishlist Is Empty",
                  style: GoogleFonts.lato(fontSize: 20),
                ),
              )
            : ListView.builder(
                itemCount: favorite.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    child: Container(
                      height: height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.BlueAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(Favorite[index].image),
                            backgroundColor: AppColor.White,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Favorite[index].title,
                                style: GoogleFonts.lato(
                                    color: AppColor.White,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${Favorite[index].prize}",
                                style: GoogleFonts.lato(
                                    color: AppColor.White,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Favorite.remove(Favorite[index]);
                              });
                            },
                            icon: Icon(Icons.delete, color: AppColor.White),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
