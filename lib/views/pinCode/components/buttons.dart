import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/navBar/view.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
            width: sizeFromWidth(1.5),
            child: CustomButton(
              text: "Send",
              fontSize: 16,
              verticalPadding: 10,
              buttonColor: mintGreenColor,
              shadowColor: mintGreenColor,
              onPress: () => Get.offAll(() =>  const NavBarView()),
            )),
    const CustomTextButton(text: "Resend Code ?",alignment: Alignment.center,)

    ],
    );
  }
}
