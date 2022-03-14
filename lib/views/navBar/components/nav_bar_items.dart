import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/home/view.dart';
import 'package:bl_alkilu/views/navBar/controller.dart';
import 'package:bl_alkilu/views/navBar/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<BottomNavigationBarItem> items(NavBarController controller) {
  final List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      backgroundColor: appPurpleColor,
      icon: Image.asset(
        "assets/images/home.png",
        color: controller.isCurrentIndex(0) ,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      backgroundColor: appPurpleColor,
      icon: Image.asset("assets/images/cart.png",
          color: controller.isCurrentIndex(1)),
      label: '',
    ),
    BottomNavigationBarItem(
      backgroundColor: appPurpleColor,
      icon: Image.asset("assets/images/van.png",
          color: controller.isCurrentIndex(2)),
      label: '',
    ),
    BottomNavigationBarItem(
      backgroundColor: appPurpleColor,
      icon: Image.asset("assets/images/user.png",
          color: controller.isCurrentIndex(3)),
      label: '',
    ),
  ];
  return navBarItems;
}
