import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';

class CardTypeContainer extends StatelessWidget {
  final String? imagePath;

  final Color? color;
  final onTap;
  const CardTypeContainer({Key? key, this.imagePath, this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),

        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Color(0xff9EA9F0),blurRadius: 6,offset: Offset(0,3))
            ],
            color: mintGreenColor,
            border: Border.all(width: 2,color: color!),
            borderRadius: const BorderRadius.all(Radius.circular(30))
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Image.network(imagePath!,width: 50,height: 20,)),
      ),
    );
  }
}
