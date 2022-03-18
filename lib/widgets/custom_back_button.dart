import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  final Color? color;

  const CustomBackButton({Key? key, this.color=Colors.black}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return IconButton(icon:  Icon(Icons.arrow_back_ios_rounded,color: color,),onPressed: ()=>Get.back(),);
  }
}
