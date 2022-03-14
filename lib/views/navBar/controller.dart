import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/navBar/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  int tabIndex = 0;

  changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

   isCurrentIndex(int index) {
    return tabIndex==index?mintGreenColor:Colors.white;
  }
}
