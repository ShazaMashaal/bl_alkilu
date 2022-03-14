import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/signIn/view.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25,),
        SizedBox(
            width: sizeFromWidth(1.5),
            child: const CustomButton(text: "Sign Up",fontSize: 14,verticalPadding: 10,buttonColor: mintGreenColor,shadowColor: mintGreenColor,)),
        const SizedBox(height: 10,),
        CustomTextButton(text: "Already have an account?",alignment: Alignment.center,onPressed: ()=>Get.off(()=>const SignInView()),),
      ],
    );
  }
}
