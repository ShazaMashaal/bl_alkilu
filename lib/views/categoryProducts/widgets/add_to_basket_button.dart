import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AddToBasketButton extends StatelessWidget {
  final double? width;
  final VoidCallback? onTap;
  const AddToBasketButton({Key? key, this.width, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          decoration: const BoxDecoration(
              color: appPurpleColor,
              borderRadius: BorderRadius.only(bottomLeft: const Radius.circular(30),bottomRight: const Radius.circular(30) )
          ),
          child: const Center(child: CustomText(text: "Add To Basket",color: Colors.white,fontWeight: FontWeight.w600,)),
        ),
      ),
    );
  }
}
