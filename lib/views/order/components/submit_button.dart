import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/order/controller.dart';
import 'package:bl_alkilu/widgets/custom_back_button.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
        init: OrderController(),
        builder: (controller)=>Container(

            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),
            child: const CustomButton(text: "Send Request",verticalPadding: 10,buttonColor: appPurpleColor,fontColor: Colors.white,))
    );
  }
}
