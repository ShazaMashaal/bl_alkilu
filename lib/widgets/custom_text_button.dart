import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final TextDecoration? decoration;

  const CustomTextButton({
    Key? key,
    this.text = '',
    this.color=Colors.white,
    this.onPressed,
    this.alignment=Alignment.centerLeft,
    this.fontWeight=FontWeight.normal,
    this.fontSize, this.decoration=TextDecoration.underline,
  }) : super(key: key);
  final String text;
  final Color? color;
  final VoidCallback? onPressed;
  final Alignment? alignment;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
            decoration: decoration,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
