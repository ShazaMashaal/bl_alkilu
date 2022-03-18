import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/constants/shadows.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

const itemDecoration=BoxDecoration(
  color: Colors.white,
  borderRadius: categoryCardRadius,
  boxShadow: categoryShadow,
);
 BoxDecoration quantityContainerDecoration=BoxDecoration(
    borderRadius:  const BorderRadius.all(Radius.circular(5)),
    border:   Border.all(color: appPurpleColor)
);
 BoxDecoration orderAppBarDecoration=const BoxDecoration(
     color: appPurpleColor,
     borderRadius:BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
 );

