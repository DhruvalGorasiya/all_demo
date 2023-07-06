import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/HomePageController.dart';
import 'package:getx/bindingController.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: MyHomePage.routeName, page: () => MyHomePage()),
      ],
      initialRoute: MyHomePage.routeName,
      // initialBinding: HomeBinding(),
    );
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BindingController());
  }
}

class MyHomePage extends StatelessWidget {
  // static const routeName = '/MyHomePage' ;
  static const routeName = '/';

  final HomePageController _controller = Get.put(HomePageController());
  // final HomePageController _controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    log('Build method');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () {
                log(_controller.counter.value.toString());
                return const Text(
                  'You have pushed the button this many times:',
                );
              },
            ),
            Obx(() {
              return Text(
                '${_controller.counter.value}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
