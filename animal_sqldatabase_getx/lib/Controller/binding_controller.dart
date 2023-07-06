import 'dart:developer';

import 'package:get/get.dart';

class BindingController extends GetxController {
  initialBind() {
    log('binding called');
  }

  @override
  void onInit() {
    super.onInit();
    initialBind();
  }
}
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BindingController());
  }
}