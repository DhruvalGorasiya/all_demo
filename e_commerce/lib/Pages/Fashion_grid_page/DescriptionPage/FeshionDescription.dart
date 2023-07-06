import 'package:e_commerce/Pages/Fashion_grid_page/DescriptionPage/Components/FashionCart.dart';
import 'package:e_commerce/Pages/Fashion_grid_page/DescriptionPage/Components/FashionCounter.dart';
import 'package:e_commerce/Pages/Fashion_grid_page/DescriptionPage/Components/FashionLike.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionDescriptionPage extends StatefulWidget {
  final Products Fashionproduct;
  final int index;
  const FashionDescriptionPage(
      {Key? key, required this.Fashionproduct, required this.index})
      : super(key: key);

  @override
  _FashionDescriptionPageState createState() =>
      _FashionDescriptionPageState(this.Fashionproduct);
}

class _FashionDescriptionPageState extends State<FashionDescriptionPage> {
  final Products Fashionproduct;
  List<Products> cart = [];

  _FashionDescriptionPageState(this.Fashionproduct);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.BlueAccent,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: height * 0.045,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: width * 0.32,
                backgroundImage: AssetImage(Fashionproduct.image),
                backgroundColor: AppColor.White,
              ),
            ),
            Spacer(),
            Container(
              height: height * 0.6,
              width: width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: AppColor.White,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Fashionproduct.title,
                          style: GoogleFonts.lato(
                              color: AppColor.BlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        FeshionLike(
                          index: widget.index,
                          FashionProduct: Fashionproduct,
                        ),
                      ],
                    ),
                    Text(
                      AppString.Description,
                      style: GoogleFonts.lato(
                          color: AppColor.Grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Text(
                      Fashionproduct.description,
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          color: AppColor.Grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FashionCounter(
                          index: widget.index,
                          Fashionproduct: Fashionproduct,
                          electronicsproduct: Fashionproduct,
                        ),
                        FashionCart(
                          index: widget.index,
                          FashionProduct: Fashionproduct,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
