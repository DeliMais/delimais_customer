import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  final _page = Rx<int>(0);
  final pageController = PageController();

  int get page => _page.value;
  set page(int page) => _page.value = page;
}
