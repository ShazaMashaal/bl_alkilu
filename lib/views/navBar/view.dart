import 'package:bl_alkilu/views/cart/view.dart';
import 'package:bl_alkilu/views/home/view.dart';
import 'package:bl_alkilu/views/navBar/components/custom_bottom_nav_bar.dart';
import 'package:bl_alkilu/views/navBar/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarView extends GetView<NavBarController> {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  CustomNavBar(),
      body: GetBuilder<NavBarController>(
          builder: (controller) => SafeArea(
                child: IndexedStack(
                  index: controller.tabIndex,
                  children: const [
                    HomeView(),
                    CartView(),
                    HomeView(),
                    HomeView(),
                  ],
                ),
              )),
    );
  }
}
