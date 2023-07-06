import 'package:cupertiono_product/Models/Product%20Model.dart';
import 'package:cupertiono_product/Utilits/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemBuilder: (BuildContext, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                height: height * 1,
                width: width * 0.17,
                color: AppColor.Grey,
              ),
              title: Text(
                product[index].Name,
                style: GoogleFonts.lato(fontSize: 20),
              ),
              subtitle: Text("\$${product[index].Price}"),
              trailing: IconButton(
                icon: Icon(
                  CupertinoIcons.add_circled,
                  color: AppColor.Blue,
                ),
                onPressed: () {
                  if (!cart.contains(product[index])) {
                    cart.add(product[index]);
                  }
                },
              ),
            ),
            Divider(
              thickness: 2,
              height: 1,
              indent: height * 0.11,
              endIndent: height * 0.02,
            ),
          ],
        );
      },
      itemCount: product.length,
    );
  }
}
