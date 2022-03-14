import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/signIn/view.dart';
import 'package:bl_alkilu/views/signUp/view.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width-40,
      child: Column(
        children:  [
          CustomButton(buttonColor: mintGreenColor,text: "Sign In",shadowColor: mintGreenColor,onPress:()=>Get.to(()=>const SignInView()) ,),
          const SizedBox(height:16),
          CustomButton(buttonColor: Colors.white,text: "Sign Up",shadowColor: Colors.white,onPress:()=>Get.to(()=>const SignUpView()))
        ],
      ),
    );
  }
}
