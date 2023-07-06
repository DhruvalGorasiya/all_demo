import 'package:e_commerce/Pages/Decoration_Grid_page/Description_page/DecorDesceiption.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';

class Decoration_grid_page extends StatefulWidget {
  const Decoration_grid_page({Key? key}) : super(key: key);

  @override
  State<Decoration_grid_page> createState() => _Decoration_grid_pageState();
}

class _Decoration_grid_pageState extends State<Decoration_grid_page> {
  final HomeDecor = homedecor;

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
            itemCount: HomeDecor.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DecorDescriptionPage(
                          index: index,
                          homedecor: HomeDecor[index],
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.White,
                    image: DecorationImage(
                      image: AssetImage(HomeDecor[index].image),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
