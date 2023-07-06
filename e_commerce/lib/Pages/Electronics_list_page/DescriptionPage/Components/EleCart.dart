import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EleCart extends StatefulWidget {
  final int index;
  final Products ElectronicsProduct;

  const EleCart(
      {Key? key, required this.ElectronicsProduct, required this.index})
      : super(key: key);

  @override
  State<EleCart> createState() => _EleCartState(this.ElectronicsProduct);
}

class _EleCartState extends State<EleCart> {
  _EleCartState(this.ElectronicsProduct);

  final Cart = cart;
  final Products ElectronicsProduct;

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
        child: Cart.contains(ElectronicsProduct)
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
          if (Cart.contains(ElectronicsProduct)) {
            Cart.remove(ElectronicsProduct);
          } else {
            Cart.add(ElectronicsProduct);
          }
        });
      },
    );
  }
}
