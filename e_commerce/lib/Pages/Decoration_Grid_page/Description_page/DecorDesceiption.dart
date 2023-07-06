import 'package:e_commerce/Pages/Decoration_Grid_page/Description_page/Components/DecorCounter.dart';
import 'package:e_commerce/Pages/Decoration_Grid_page/Description_page/Components/DecorLike.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/Product/Product.dart';
import 'Components/DecorCart.dart';

class DecorDescriptionPage extends StatefulWidget {
  final int index;
  final Products homedecor;

  const DecorDescriptionPage(
      {Key? key, required this.homedecor, required this.index})
      : super(key: key);

  @override
  _DecorDescriptionPageState createState() =>
      _DecorDescriptionPageState(this.homedecor);
}

class _DecorDescriptionPageState extends State<DecorDescriptionPage> {
  final Products homedecor;

  _DecorDescriptionPageState(this.homedecor);

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
                backgroundImage: AssetImage(homedecor.image),
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
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            homedecor.title,
                            style: GoogleFonts.lato(
                                color: AppColor.BlueAccent,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          DecorLike(
                            index: widget.index,
                            Decorproduct: homedecor,
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
                        homedecor.description,
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
                          DecorCounter(
                            index: widget.index,
                            HomeDecor: homedecor,
                          ),
                          DecorCart(
                            index: widget.index,
                            HomeDecor: homedecor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
