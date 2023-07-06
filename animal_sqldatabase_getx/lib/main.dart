import 'package:animal_sqldatabase_getx/Controller/binding_controller.dart';
import 'package:animal_sqldatabase_getx/View/animal_category_view.dart';
import 'package:animal_sqldatabase_getx/View/discription_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'View/my_home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(
              name: MyHomePage.routeName,
              page: () => MyHomePage(),
            ),
            GetPage(
              name: AnimalCategory.routeName,
              page: () => AnimalCategory(),
            ),
            GetPage(
                name: DiscriptionPage.routeName, page: () => DiscriptionPage())
          ],
          initialRoute: MyHomePage.routeName,
          initialBinding: HomeBinding(),
        );
      },
    );
  }
}
