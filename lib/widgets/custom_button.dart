import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final Color? borderColor;

  final Color? shadowColor;

  const CustomButton({
    Key? key,
    this.text = '',
    this.fontSize = 20,
    this.fontColor = appPurpleColor,
    this.onPress,
    this.radius = 26,
    this.buttonColor,
    this.borderColor,
    this.verticalPadding=7, this.shadowColor=Colors.transparent,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color fontColor;
  final VoidCallback? onPress;
  final double radius;
  final Color? buttonColor;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor!,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        border: Border.all(color: borderColor !=null?borderColor!: Colors.black12, width: 1.5),
        color: const Color.fromRGBO(0, 181, 137, 1),
        borderRadius: BorderRadius.circular(radius),
        gradient: buttonColor != null
            ?  LinearGradient(colors: [buttonColor!, buttonColor!])
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                    Color.fromRGBO(51, 51, 51, 1),
                    Colors.black,
                  ]),
      ),
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: verticalPadding),
      child: InkWell(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: text,
              fontSize: fontSize,
              color: fontColor,
              fontWeight: FontWeight.normal,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
