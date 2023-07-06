import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecorCart extends StatefulWidget {
  final int index;
  final Products HomeDecor;
  const DecorCart({Key? key, required this.HomeDecor, required this.index})
      : super(key: key);

  @override
  State<DecorCart> createState() => _EleCartState(this.HomeDecor);
}

class _EleCartState extends State<DecorCart> {
  _EleCartState(this.HomeDecor);

  final Cart = cart;
  final Products HomeDecor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Container(
        height: height * 0.07,
        width: width * 0.35,
        decoration: BoxDecoration(
          color: AppColor.BlueAccent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Cart.contains(HomeDecor)
            ? Center(
                child: Icon(
                  Icons.check,
                  color: AppColor.White,
                ),
              )
            : Center(
                child: Text(
                  "Add to Cart",
                  style: GoogleFonts.lato(fontSize: 17, color: AppColor.White),
                ),
              ),
      ),
      onTap: () {
        setState(() {
          if (Cart.contains(HomeDecor)) {
            Cart.remove(HomeDecor);
          } else {
            Cart.add(HomeDecor);
          }
        });
      },
    );
  }
}
