import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx/main.dart';

class HomePageController extends GetxController {
  RxInt counter = 0.obs;
// RxBool
//   RxString
//   RxMap
//   RxDouble
//   RxList<int> list = <int>[].obs;
//   Rx<Location> location;
//   Rx<Model> model = Model().obs;

  void incrementCounter() {
    counter.value++;
    // Get.toNamed(MyHomePage.routeName);
    log(counter.value.toString());
  }

  @override
  void onInit() {
    super.onInit();
    log('on Init');
  }

  @override
  onReady() {
    super.onReady();
    log('on Init 2 ');
  }

  @override
  onClose() {
    super.onClose();
  }
}
