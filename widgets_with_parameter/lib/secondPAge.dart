import 'dart:developer';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() {
    log('Create State');
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    log('Init state');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    log('Did Change Dependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant SecondPage oldWidget) {
    log('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    log('de Activate');
    super.deactivate();
  }

  @override
  void dispose() {
    log('Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('Build method running');
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
