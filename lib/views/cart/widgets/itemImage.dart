import 'package:bl_alkilu/constants/raduis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String? image;

  final double? width,height;

  const ItemImage({Key? key, this.image, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: itemImageRadius,
        child: Image.network(image!, height: height, width: width,fit: BoxFit.cover,));
  }
}
