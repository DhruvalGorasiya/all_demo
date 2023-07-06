import 'dart:developer';

import 'package:flutter/material.dart';

class CommonWidgets {
  String name = 'Yash';

  CommonWidgets() {
    log('Contructor call ~~>> $name');
  }

  Container singleContainer({required String name, required Color color}) {
    return Container(
      height: 200,
      width: double.infinity,
      color: color,
      alignment: Alignment.center,
      child: Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
        ),
      ),
    );
  }

  onTap() {
    return name = 'akash';
  }
}
