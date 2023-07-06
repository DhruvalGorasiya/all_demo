import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  late final Cart = cart;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.BlueAccent,
        elevation: 0,
        title: Text("Cart"),
      ),
      body: SafeArea(
        child: Cart.isEmpty
            ? Center(
                child: Text(
                  "Cart Is Empty",
                  style: GoogleFonts.lato(fontSize: 20),
                ),
              )
            : ListView.builder(
                itemCount: Cart.length,
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
                            backgroundImage: AssetImage(Cart[index].image),
                            backgroundColor: AppColor.White,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Cart[index].title,
                                style: GoogleFonts.lato(
                                    color: AppColor.White,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${Cart[index].prize}",
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
                                Cart.remove(Cart[index]);
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
