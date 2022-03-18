import 'package:bl_alkilu/views/order/components/choose_payment_method.dart';
import 'package:bl_alkilu/views/order/components/fields.dart';
import 'package:bl_alkilu/views/order/components/order_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/submit_button.dart';
import 'components/total_details.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        TextEditingController().clear();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const OrderAppBar(),
              Expanded(
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    Fields(),
                    TotalDetails(),
                    ChoosePaymentMethod(),
                    SubmitButton()

                  ],
                ),
              )
            ],
          )),
    );
  }
}
