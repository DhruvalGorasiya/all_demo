import 'dart:developer';

import 'package:animal_sqldatabase_getx/Model/model.dart';
import 'package:animal_sqldatabase_getx/SqlHelper/sql_helper.dart';
import 'package:animal_sqldatabase_getx/View/animal_category_view.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs;
  RxString image =
      'https://images.unsplash.com/photo-1586617356423-52763004deac?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=429'
          .obs;
  RxString title = 'Animal Biography'.obs;
  RxString discription =
      'Animal biography is a global leader in real life enterainment serving a passionate audience of superfans ariund the world with content that inspires, informs and entertains.'
          .obs;
  RxString tagline = 'Ready to Watch?'.obs;
  RxString buttonText = 'Start Enjoying'.obs;
  @override
  void onInit(){
    super.onInit();
    addData();
    refreshData();
  }

  void route() {
    Get.toNamed(AnimalCategory.routeName);
  }
  RxList allData = [].obs;

  void refreshData() async {
    final data = await SqLHelper.getItems();
    allData = data.obs;
    log(allData.toString());
  }
  addData() async {
    for(int i=0;i <= animalCategoryList.length;i++){
      log('$i');
      SqLHelper.addItems(name: animalCategoryList[i].categoryName, img: animalCategoryList[i].image, logo: animalCategoryList[i].categoryLogo,);
    }
  }
}
