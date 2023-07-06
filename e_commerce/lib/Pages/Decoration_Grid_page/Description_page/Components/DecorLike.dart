import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';

class DecorLike extends StatefulWidget {
  final int index;
  final Products Decorproduct;

  const DecorLike({Key? key, required this.Decorproduct, required this.index})
      : super(key: key);

  @override
  State<DecorLike> createState() => _DecorLikeState(this.Decorproduct);
}

class _DecorLikeState extends State<DecorLike> {
  _DecorLikeState(this.Decorproduct);

  final Favorite = favorite;
  final Products Decorproduct;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.11,
      width: width * 0.11,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (Favorite.contains(Decorproduct)
            ? AppColor.Pink20
            : AppColor.BlueAccent50),
      ),
      child: IconButton(
        icon: (Favorite.contains(Decorproduct)
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
              if (Favorite.contains(Decorproduct)) {
                Favorite.remove(Decorproduct);
              } else {
                Favorite.add(Decorproduct);
              }
            },
          );
        },
      ),
    );
  }
}
