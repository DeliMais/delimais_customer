import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPageController extends GetxController {
  final pageController = PageController();

  final _currentPage = Rx<int>(0);

  int get currentPage => _currentPage.value;

  set currentPage(int current) => _currentPage.value = current;

  void onPageChanged(int current) {}
}
