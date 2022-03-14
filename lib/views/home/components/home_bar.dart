import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/welcome/view.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomText(text: "BI ALKILU",color: appPurpleColor,fontSize: 25,),
        IconButton(icon: Image.asset("assets/images/logout.png"),onPressed:()=> Get.off(()=>const WelcomeView()),)
      ],
    );
  }
}
