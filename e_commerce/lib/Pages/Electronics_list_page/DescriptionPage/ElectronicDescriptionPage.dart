import 'package:e_commerce/Pages/Electronics_list_page/DescriptionPage/Components/EleCart.dart';
import 'package:e_commerce/Pages/Electronics_list_page/DescriptionPage/Components/EleCounter.dart';
import 'package:e_commerce/Pages/Electronics_list_page/DescriptionPage/Components/EleLike.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectronicDescriptionPage extends StatefulWidget {
  final Products electronicsproduct;
  final int index;

  const ElectronicDescriptionPage(
      {Key? key, required this.electronicsproduct, required this.index})
      : super(key: key);

  @override
  _ElectronicDescriptionPageState createState() =>
      _ElectronicDescriptionPageState(this.electronicsproduct);
}

class _ElectronicDescriptionPageState extends State<ElectronicDescriptionPage> {
  final Products electronicsproduct;

  _ElectronicDescriptionPageState(this.electronicsproduct);

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
                backgroundImage: AssetImage(electronicsproduct.image),
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
                          electronicsproduct.title,
                          style: GoogleFonts.lato(
                              color: AppColor.BlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        EleLike(
                          index: widget.index,
                          ElectronicsProduct: electronicsproduct,
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
                      electronicsproduct.description,
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
                        EleCounter(
                          index: widget.index,
                          electronicsproduct: electronicsproduct,
                        ),
                        EleCart(
                          index: widget.index,
                          ElectronicsProduct: electronicsproduct,
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
