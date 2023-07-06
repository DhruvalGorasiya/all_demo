import 'package:e_commerce/models/Product/Product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utilities/color.dart';

class FashionCounter extends StatefulWidget {
  final int index;
  final Products electronicsproduct;

  const FashionCounter(
      {Key? key,
      required this.index,
      required this.electronicsproduct,
      required Products Fashionproduct})
      : super(key: key);

  @override
  State<FashionCounter> createState() => _DecorCounterState(electronicsproduct);
}

class _DecorCounterState extends State<FashionCounter> {
  _DecorCounterState(this.electronicsproduct);

  final Products electronicsproduct;
  int i = 0;
  double homeDecor = 0;

  inc() {
    setState(() {
      i++;
      homeDecor = electronicsproduct.prize * i;
    });
  }

  dec() {
    setState(() {
      if (0 < i) i--;
      homeDecor = electronicsproduct.prize * i;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${homeDecor.toStringAsFixed(2)}",
          style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: AppColor.BlueAccent,
              child: Icon(Icons.remove),
              onPressed: dec,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "${i}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            FloatingActionButton(
              backgroundColor: AppColor.BlueAccent,
              child: Icon(Icons.add),
              onPressed: inc,
            ),
          ],
        ),
      ],
    );
  }
}
