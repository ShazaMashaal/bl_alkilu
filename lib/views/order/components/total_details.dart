import 'package:bl_alkilu/widgets/price_card.dart';
import 'package:flutter/material.dart';

class TotalDetails extends StatelessWidget {
  const TotalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height:15 ,),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
          children: const [
            PriceCard(title: "Shipping Fee",price: "50\$",),
            PriceCard(title: "Product Price",price: "50\$",)

          ],),
        const PriceCard(title: "Total",price: "100\$",),
        const SizedBox(height:15 ,),
      ],
    );
  }
}
