import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/order/view.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/price_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class TotalPriceAndSubmit extends StatelessWidget {
  const TotalPriceAndSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const SizedBox(height: 10,),
          const Align(
      alignment: Alignment.centerRight,
            child: PriceCard(title:"Total",price:"125\$")),
        const SizedBox(height: 15,),

        SizedBox(
          width: sizeFromWidth(1.5),
          child:  CustomButton(
            onPress: ()=>Get.to((const OrderView())),
            fontSize: 16,
            text: "order now",
            buttonColor: appPurpleColor,
            fontColor: Colors.white,
            verticalPadding: 10,
          ),
        )

      ],
    );
  }
}
