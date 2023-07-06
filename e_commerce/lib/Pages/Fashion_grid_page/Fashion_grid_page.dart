import 'package:e_commerce/Pages/Fashion_grid_page/DescriptionPage/FeshionDescription.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';

class FashionGrid extends StatefulWidget {
  const FashionGrid({Key? key}) : super(key: key);

  @override
  State<FashionGrid> createState() => _FashionGridState();
}

class _FashionGridState extends State<FashionGrid> {
  final FashionProducts = fashionproducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.BlueAccent,
      appBar: AppBar(
        title: Text(AppString.FashionListTitle),
        backgroundColor: AppColor.BlueAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            itemCount: FashionProducts.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return FashionDescriptionPage(
                      index: index,
                      Fashionproduct: FashionProducts[index],
                    );
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.White),
                  child: Image.asset(FashionProducts[index].image,
                      fit: BoxFit.fill),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
