import 'package:bl_alkilu/views/orderStatus/widgets/order_card.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => OrderCard(
          imagePath: "https://upload.wikimedia.org/wikipedia/en/3/37/Meeza_Egyptian_company_logo.png",
        ));
  }
}
