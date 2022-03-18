import 'package:bl_alkilu/constants/decorations.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/widgets/custom_back_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:  orderAppBarDecoration,
      height: sizeFromHeight(6),
      child: SafeArea(
        child: Row(
          children: const [
            CustomBackButton(color: Colors.white,),
            CustomText(color: Colors.white,text: "payment method",fontSize: 20,fontWeight: FontWeight.bold,)
          ],
        ),
      ),
    );
  }
}
