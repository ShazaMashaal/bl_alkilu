import 'dart:ui';

import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/home/components/categories.dart';
import 'package:bl_alkilu/views/home/components/home_bar.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WhiteScaffold(
      children: [
        HomeBar(),
        PageTitle(title: "Products",),
        Categories()
      ],
    );
  }
}
