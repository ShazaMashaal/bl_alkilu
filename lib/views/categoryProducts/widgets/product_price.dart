import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final double? top,radius,fontSize;
  final String? price;
  const ProductPrice({Key? key, this.top, this.radius, this.fontSize, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(right: 0,

      // top: constraints.maxHeight/2-radius/2,
      top:top,
      child:  CircleAvatar(
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
      ),);
  }
}
