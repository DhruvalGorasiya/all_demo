import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta/Helper/auth_helper.dart';
import 'package:sizer/sizer.dart';

Widget passField(
    {required TextEditingController controller,
    required bool validate,
    String? hintText,
    Widget? suffix,
    IconData? prefix,
    required bool obscure,
    String? label}) {
  return TextFormField(
    validator: validate
        ? (value) => AuthHelper.validatePassword(password: controller.text)
        : null,
    cursorHeight: 5.w,
    controller: controller,
    obscureText: obscure == true ? obscure : false,
    decoration: InputDecoration(
      suffixIcon: suffix,
      label: label != null ? Text(label) : null,
      hintText: hintText,
      filled: true,
      prefixIcon: prefix != null ? Icon(prefix) : null,
      fillColor: Colors.grey[300],
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}

Widget emailField(
    {required TextEditingController controller,
    required bool validate,
    String? hintText,
    Widget? suffix,
    IconData? prefix,
    bool? obscure,
    String? label}) {
  return TextFormField(
    validator:
        validate ? (value) => AuthHelper.validateEmail(email: value) : null,
    cursorHeight: 5.w,
    controller: controller,
    obscureText: obscure ?? false,
    decoration: InputDecoration(
      suffixIcon: suffix,
      label: label != null ? Text(label) : null,
      hintText: hintText,
      filled: true,
      prefixIcon: prefix != null ? Icon(prefix) : null,
      fillColor: Colors.grey[300],
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}

showSnackBar(String text){
  Get.snackbar('', '',
    titleText: Text('text'),
      messageText: Text('',style: TextStyle(fontSize: 0),)

  );
}