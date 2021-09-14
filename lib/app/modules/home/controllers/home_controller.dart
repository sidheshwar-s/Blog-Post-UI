import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];

  GlobalKey<ScaffoldState> get scaffoldKey => globalKey;

  void setMenuIndex(int index) {
    _currentIndex.value = index;
  }
}
