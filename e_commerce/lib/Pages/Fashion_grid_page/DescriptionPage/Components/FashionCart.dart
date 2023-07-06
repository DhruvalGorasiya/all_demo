import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionCart extends StatefulWidget {
  final int index;
  final Products FashionProduct;

  const FashionCart(
      {Key? key, required this.FashionProduct, required this.index})
      : super(key: key);

  @override
  State<FashionCart> createState() => _EleCartState(this.FashionProduct);
}

class _EleCartState extends State<FashionCart> {
  _EleCartState(this.FashionProduct);

  final Cart = cart;
  final Products FashionProduct;

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
        child: Cart.contains(FashionProduct)
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
          if (Cart.contains(FashionProduct)) {
            Cart.remove(FashionProduct);
          } else {
            Cart.add(FashionProduct);
          }
        });
      },
    );
  }
}
