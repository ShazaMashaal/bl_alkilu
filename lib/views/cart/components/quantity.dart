import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/decorations.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  const Quantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 3,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: (){},icon: const Icon(Icons.remove,color: Colors.grey,)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
          decoration: quantityContainerDecoration,
          child: const CustomText(text: "1",fontSize:14,fontWeight: FontWeight.w600,color: appPurpleColor,),
        ),

        IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: (){},icon: const Icon(Icons.add,color: Colors.grey,)),


      ],);
  }
}
