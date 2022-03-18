import 'package:flutter/material.dart';

import 'custom_text.dart';

class PriceCard extends StatelessWidget {
  final String? title,price;

  const PriceCard({Key? key, this.title, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        CustomText(text: title,fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold,),
        CustomText(text: price,fontSize: 22,fontWeight: FontWeight.bold,),

      ],
    );
  }
}
