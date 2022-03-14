import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/pinCode/view.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 75,
        ),
        SizedBox(
            width: sizeFromWidth(1.5),
            child: CustomButton(
              text: "Verify",
              fontSize: 14,
              verticalPadding: 10,
              buttonColor: mintGreenColor,
              shadowColor: mintGreenColor,
              onPress: () => Get.to(() => const PinCodeView()),
            )),
      ],
    );
  }
}
