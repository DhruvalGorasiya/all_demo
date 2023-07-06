import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRoomController extends GetxController {
  var argumentData;
  TextEditingController chat = TextEditingController();
  @override
  void onInit() {
    argumentData = Get.arguments;
    super.onInit();
  }
}
