import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/views/navBar/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav_bar_items.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({
    Key? key,
  }) : super(key: key);
  final NavBarController controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (_) => ClipRRect(
        borderRadius: navBarRadius,
        child: BottomNavigationBar(
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          backgroundColor: appPurpleColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          items: items(controller),
        ),
      ),
    );
  }
}
