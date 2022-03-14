import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/sendPinCode/view.dart';
import 'package:bl_alkilu/views/signUp/view.dart';
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
         CustomTextButton(text: "Forgot Password ?",onPressed:  ()=>Get.to(()=>const SendPinCodeView())),
        const SizedBox(height: 35,),
        SizedBox(
            width: sizeFromWidth(1.5),
            child: const CustomButton(text: "Sign In",fontSize: 14,verticalPadding: 10,buttonColor: mintGreenColor,shadowColor: mintGreenColor,)),
        const SizedBox(height: 10,),
         CustomTextButton(text: "Don't have an account? Sign up",alignment: Alignment.center,onPressed: ()=> Get.off(()=>const SignUpView())),
      ],
    );
  }
}
