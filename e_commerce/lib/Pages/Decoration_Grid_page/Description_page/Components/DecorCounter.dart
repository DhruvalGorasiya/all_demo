import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DecorCounter extends StatefulWidget {
  final int index;
  final Products HomeDecor;

  const DecorCounter({Key? key, required this.HomeDecor, required this.index})
      : super(key: key);

  @override
  State<DecorCounter> createState() => _DecorCounterState(HomeDecor);
}

class _DecorCounterState extends State<DecorCounter> {
  _DecorCounterState(this.HomeDecor);

  final Products HomeDecor;
  int i = 0;
  double homeDecor = 0;

  inc() {
    setState(() {
      i++;
      homeDecor = HomeDecor.prize * i;
    });
  }

  dec() {
    setState(() {
      if (0 < i) i--;
      homeDecor = HomeDecor.prize * i;
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
