import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: CustomButton(radius: 10,text: "Save",buttonColor: appPurpleColor,fontColor: Colors.white,shadowColor: Color(0xff9EA9F0),)),
        SizedBox(width: 20,),
        Expanded(child: CustomButton(radius: 10,text: "Cancel",buttonColor: mintGreenColor,fontColor: appPurpleColor,borderColor: Colors.transparent,shadowColor: Color(0xff9EA9F0))),
      ],
    );
  }
}
