import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/order/components/payment_method_types.dart';
import 'package:bl_alkilu/views/order/controller.dart';
import 'package:bl_alkilu/widgets/custom_radio_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'card_fields.dart';

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      init: OrderController(),
      builder: (controller) => Column(
        children: [
          CustomRadioButton(
            text: "Pay After Delivery",
            value: PaymentMethod.onDelivery,
            groupValue: controller.val,
            onChanged: (PaymentMethod? value) =>
                controller.changePaymentMethod(value!),
          ),
          CustomRadioButton(
            text: "Pay Now",
            value: PaymentMethod.masterCard,
            groupValue: controller.val,
            onChanged: (PaymentMethod? value) =>
                controller.changePaymentMethod(value!),
          ),
          controller.val==PaymentMethod.masterCard? CardFields() :Text("")
        ],
      ),
    );
  }
}
