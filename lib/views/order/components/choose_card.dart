import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/views/order/controller.dart';
import 'package:bl_alkilu/widgets/card_type_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseCard extends StatelessWidget {
  const ChooseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      init: OrderController(),
      builder: (controller) => Wrap(
        spacing: 20,
        direction: Axis.horizontal,
        children: [
          CardTypeContainer(
              imagePath:
                  "https://upload.wikimedia.org/wikipedia/en/3/37/Meeza_Egyptian_company_logo.png",
              onTap: () {
                controller.changeCard(1);
              },
              color: controller.isMasterCard(1)),
          CardTypeContainer(
            imagePath:
                "https://upload.wikimedia.org/wikipedia/en/3/37/Meeza_Egyptian_company_logo.png",
            onTap: () {
              controller.changeCard(2);
            },
            color: controller.isMasterCard(2),
          ),
          CardTypeContainer(
            imagePath:
                "https://upload.wikimedia.org/wikipedia/en/3/37/Meeza_Egyptian_company_logo.png",
            onTap: () {
              controller.changeCard(3);
            },
            color: controller.isMasterCard(3),
          ),
        ],
      ),
    );
  }
}
