import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCoupon extends StatelessWidget {
  const AddCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex:2,child: InputFormField(
          hint: "Add Coupon Code",
          fillColor: Colors.white,
          textColor: Colors.black,
          hintColor: Colors.grey[500],

        )),
        const SizedBox(width: 20,),
        const Expanded(child: CustomButton(
          buttonColor: Colors.white,
          borderColor: appPurpleColor,
          fontSize: 16,
          text: "add",
        )),
      ],
    );
  }
}
