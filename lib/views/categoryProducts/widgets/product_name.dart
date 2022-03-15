import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final String? name;

  const ProductName({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(5) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:  [
          CustomText(
            text: name!,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const CustomText(
            text: "1 kilo",
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
