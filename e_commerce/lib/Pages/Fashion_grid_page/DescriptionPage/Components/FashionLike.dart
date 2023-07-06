import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';

class FeshionLike extends StatefulWidget {
  final int index;
  final Products FashionProduct;

  const FeshionLike(
      {Key? key, required this.FashionProduct, required this.index})
      : super(key: key);

  @override
  State<FeshionLike> createState() => _FeshionLikeState(this.FashionProduct);
}

class _FeshionLikeState extends State<FeshionLike> {
  _FeshionLikeState(this.FashionProduct);
  final Favorite = favorite;
  final Products FashionProduct;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.11,
      width: width * 0.11,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (Favorite.contains(FashionProduct)
            ? AppColor.Pink20
            : AppColor.BlueAccent50),
      ),
      child: IconButton(
        icon: (Favorite.contains(FashionProduct)
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
              if (Favorite.contains(FashionProduct)) {
                Favorite.remove(FashionProduct);
              } else {
                Favorite.add(FashionProduct);
              }
            },
          );
        },
      ),
    );
  }
}
