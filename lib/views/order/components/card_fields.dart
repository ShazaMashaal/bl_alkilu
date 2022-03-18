import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/order/components/choose_card.dart';
import 'package:bl_alkilu/widgets/card_type_container.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class CardFields extends StatelessWidget {
  const CardFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChooseCard(),
        const CustomText(text: "Card Information",fontSize: 16,fontWeight: FontWeight.bold,alignment: Alignment.centerLeft,verticalMargin: 10,),
        const InputFormField(hint: "Card Number",
        fillColor: Colors.white,
          hintColor: appPurpleColor,
          isNumber: true,),
        Row(
          children: const [
            Expanded(child: InputFormField(hint: "CCV",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,isNumber: true,)),
            SizedBox(width: 20,),
            Expanded(child: InputFormField(hint: "Expiring Date",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,isNumber: true,)),


          ],
        ),
        
      ],
    );
  }
}
