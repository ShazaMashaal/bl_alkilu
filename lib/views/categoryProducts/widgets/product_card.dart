import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/decorations.dart';
import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/constants/shadows.dart';
import 'package:bl_alkilu/views/categoryProducts/widgets/product_image.dart';
import 'package:bl_alkilu/views/categoryProducts/widgets/product_name.dart';
import 'package:bl_alkilu/views/categoryProducts/widgets/product_price.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'add_to_basket_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, this.price, this.image, this.name, this.onTap})
      : super(key: key);
  final String? price, image, name;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    const double radius = 25;
    return LayoutBuilder(
      builder: (BuildContext context, constraints) => Container(
        decoration: itemDecoration,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductImage(
                  image: image!,
                  height: constraints.maxHeight / 2,
                ),
                ProductName(
                  name: name,
                ),
                AddToBasketButton(
                  onTap: onTap,
                  width: constraints.maxWidth,
                )
              ],
            ),
            ProductPrice(
              fontSize: 12,
              radius: radius,
              top: constraints.maxHeight / 2 - radius / 2,
              price: price,
            ),
          ],
        ),
      ),
    );
  }
}
