import 'package:bl_alkilu/widgets/custom_back_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar categoryProductAppBar({String? name}){
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      IconButton(icon: Image.asset("assets/images/filter.png"),onPressed: (){},)
    ],
    leading:const CustomBackButton(),
    iconTheme:const IconThemeData(color: Colors.black) ,
    elevation: 0,
    title:  CustomText(text:name,fontSize:20,fontWeight: FontWeight.bold,),
  );
}