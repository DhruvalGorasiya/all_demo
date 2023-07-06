import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class SearchController extends GetxController {
  TextEditingController searchController = TextEditingController();
  RxBool userShowing = false.obs;
}
