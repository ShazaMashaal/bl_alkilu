import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText(
          text: "Forgot Password ?",fontSize: 21,color: Colors.white,fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 14,),
        CustomText(
            text: "Enter The Verification Code ",fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600
        ),
        SizedBox(height: 60,),

      ],
    );
  }
}
