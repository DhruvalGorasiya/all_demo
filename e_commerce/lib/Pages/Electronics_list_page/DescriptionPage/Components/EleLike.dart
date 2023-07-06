import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';

class EleLike extends StatefulWidget {
  final int index;
  final Products ElectronicsProduct;

  const EleLike(
      {Key? key, required this.ElectronicsProduct, required this.index})
      : super(key: key);

  @override
  State<EleLike> createState() => _EleLikeState(this.ElectronicsProduct);
}

class _EleLikeState extends State<EleLike> {
  _EleLikeState(this.ElectronicsProduct);

  final Favorite = favorite;
  final Products ElectronicsProduct;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.11,
      width: width * 0.11,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (Favorite.contains(ElectronicsProduct)
            ? AppColor.Pink20
            : AppColor.BlueAccent50),
      ),
      child: IconButton(
        icon: (Favorite.contains(ElectronicsProduct)
            ? Icon(
                Icons.favorite,
                color: AppColor.Pink50,
              )
            : Icon(
                Icons.favorite,
                color: AppColor.BlueAccent,
              )),
        onPressed: () {
          setState(
            () {
              if (Favorite.contains(ElectronicsProduct)) {
                Favorite.remove(ElectronicsProduct);
              } else {
                Favorite.add(ElectronicsProduct);
              }
            },
          );
        },
      ),
    );
  }
}
