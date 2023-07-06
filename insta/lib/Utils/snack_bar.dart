import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackBar({required String content, required int duration}) {
  Get.snackbar(
    content,
    '',
    duration: Duration(seconds: duration),
    snackPosition: SnackPosition.BOTTOM,
    snackStyle: SnackStyle.FLOATING,
    titleText: Text(content),
    messageText: const Text(
      '',
      style: TextStyle(fontSize: 0),
    ),
    barBlur: 100,
  );
}
