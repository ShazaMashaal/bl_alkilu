import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const defaultPadding=EdgeInsets.all(20);


double sizeFromHeight(double fraction, {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(Get.context!);
  fraction = (removeAppBarSize
      ? (mediaQuery.size.height -
      AppBar().preferredSize.height -
      mediaQuery.padding.top)
      : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction = MediaQuery.of(Get.context!).size.width /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}