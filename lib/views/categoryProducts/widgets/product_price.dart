import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double? radius,fontSize;
  final String? price;
  const ProductPrice({Key? key, this.radius, this.fontSize, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: mintGreenColor,
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start ,
        mainAxisAlignment:MainAxisAlignment.center ,
        children:  [
          CustomText(text: price,fontSize: fontSize!,color: appPurpleColor,fontWeight: FontWeight.bold,),
          const CustomText(text: " L.E",fontSize: 8,color: appPurpleColor,fontWeight: FontWeight.w600,),

        ],
      ),
    );
  }
}
