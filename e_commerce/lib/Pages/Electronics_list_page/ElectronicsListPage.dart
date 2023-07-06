import 'package:e_commerce/Pages/Electronics_list_page/DescriptionPage/ElectronicDescriptionPage.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:e_commerce/utilities/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectronicsList extends StatefulWidget {
  const ElectronicsList({Key? key}) : super(key: key);

  @override
  State<ElectronicsList> createState() => _ElectronicsListState();
}

class _ElectronicsListState extends State<ElectronicsList> {
  final ElectronicsProductsList = electronicsproducts;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.BlueAccent,
        title: Text(AppString.ElectronicListTitle),
      ),
      body: ListView.builder(
        itemCount: ElectronicsProductsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ElectronicDescriptionPage(
                        index: index,
                        electronicsproduct: ElectronicsProductsList[index],
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: height * 0.13,
                decoration: BoxDecoration(
                  color: AppColor.BlueAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: width * 0.11,
                        backgroundColor: AppColor.White,
                        child: Container(
                          color: Colors.transparent,
                          height: height * 0.1,
                          width: width * 0.2,
                          child: ClipOval(
                            child:
                                Image.asset(electronicsproducts[index].image),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            electronicsproducts[index].title,
                            style: GoogleFonts.lato(
                                color: AppColor.White,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "${electronicsproducts[index].prize.toStringAsFixed(2)}",
                            style: GoogleFonts.lato(
                                color: AppColor.White,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white, width: 1.5)),
                        child: FaIcon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
