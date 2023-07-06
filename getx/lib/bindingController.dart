import 'dart:developer';

import 'package:get/get.dart';

class BindingController extends GetxController {
  initialBind() {
    log('binding called');
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initialBind();
  }
}
