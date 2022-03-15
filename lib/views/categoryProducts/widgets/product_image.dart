import 'package:bl_alkilu/constants/raduis.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String? image;

  final double? height;

  const ProductImage({Key? key, this.image, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: productImageRadius,
        child: Image.network(image!, fit: BoxFit.cover, height: height));
  }
}
