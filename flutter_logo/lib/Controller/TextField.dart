import 'package:flutter/material.dart';

Widget textField(
    {required TextEditingController controller,
    String? HintText = null,
    IconData? prefixicon,
    Widget? suffixicon = null,
    required bool obscure,
    TextInputType? Keyboard,
    required String label,
    var error}) {
  return TextField(
    enableSuggestions: true,
    style: TextStyle(fontSize: 16, color: Colors.black),
    controller: controller,
    keyboardType: Keyboard,
    textAlign: TextAlign.start,
    cursorHeight: 18,
    obscureText: obscure,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.green),
      prefixIcon: Icon(prefixicon, color: Colors.green, size: 25),
      suffixIcon: suffixicon,
      hintText: HintText,
      hintStyle: TextStyle(fontSize: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.green, width: 2),
      ),
      errorText: error,
    ),
  );
}
