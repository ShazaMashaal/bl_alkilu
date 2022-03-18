import 'package:bl_alkilu/views/categoryProducts/widgets/product_price.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CustomText(
          text: "Lamb Meat",
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        ProductPrice(
          fontSize: 12,
          price: "50",
          radius: 20,
        )
      ],
    );
  }
}
