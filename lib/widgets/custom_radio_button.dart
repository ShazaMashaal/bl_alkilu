import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/order/components/payment_method_types.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomRadioButton extends StatelessWidget {
  final String? text;
  final PaymentMethod? value,groupValue;
  final  onChanged;
  const CustomRadioButton({Key? key, this.text, this.value, this.groupValue, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: appPurpleColor,
          value: value,
          groupValue:groupValue ,
          onChanged:onChanged,
        ),
         CustomText(
          text: text!,
          fontSize: 16,
          color: appPurpleColor,
        )
      ],
    );
  }
}
