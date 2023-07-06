import 'package:e_commerce/Pages/Decoration_Grid_page/Decoration_grid_page.dart';
import 'package:e_commerce/Pages/Electronics_list_page/ElectronicsListPage.dart';
import 'package:e_commerce/Pages/Fashion_grid_page/Fashion_grid_page.dart';
import 'package:e_commerce/Pages/First_Pages/Components/List_List.dart';
import 'package:e_commerce/models/Product/Product.dart';
import 'package:e_commerce/utilities/color.dart';
import 'package:flutter/material.dart';
import 'Card_Grid.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              isScrollable: true,
              labelColor: AppColor.White,
              unselectedLabelColor: AppColor.White54,
              controller: _tabController,
              padding: EdgeInsets.only(left: 10),
              tabs: [
                Tab(
                  text: "Card",
                ),
                Tab(
                  text: "List",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: height * 0.6,
          width: width * 1,
          child: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ElectronicsList();
                            },
                          ),
                        );
                      },
                      child: Card_grid(context,
                          ImgUrl: electronicsproducts[15].image,
                          Prize: "\$${electronicsproducts[15].prize}",
                          Product_Name: electronicsproducts[15].title),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FashionGrid();
                            },
                          ),
                        );
                      },
                      child: Card_grid(context,
                          ImgUrl: fashionproducts[2].image,
                          Prize: "\$${homedecor[2].prize}",
                          Product_Name: homedecor[2].title),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Decoration_grid_page();
                            },
                          ),
                        );
                      },
                      child: Card_grid(context,
                          ImgUrl: homedecor[2].image,
                          Prize: "\$${homedecor[2].prize}",
                          Product_Name: homedecor[2].title),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ElectronicsList();
                            },
                          ),
                        );
                      },
                      child: List_List(context,
                          ImgUrl: electronicsproducts[15].image,
                          Prize: "\$${electronicsproducts[15].prize}",
                          Product_Name: electronicsproducts[15].title),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FashionGrid();
                            },
                          ),
                        );
                      },
                      child: List_List(context,
                          ImgUrl: fashionproducts[2].image,
                          Prize: "\$${fashionproducts[2].prize}",
                          Product_Name: fashionproducts[2].title),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Decoration_grid_page();
                            },
                          ),
                        );
                      },
                      child: List_List(context,
                          ImgUrl: homedecor[2].image,
                          Prize: "\$${homedecor[2].prize}",
                          Product_Name: homedecor[2].title),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
