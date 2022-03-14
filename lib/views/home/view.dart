import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteScaffold(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "BI ALKILU",color: appPurpleColor,fontSize: 25,)
          ],
        )
      ],
    );
  }
}
