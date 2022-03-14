import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/constants/shadows.dart';
import 'package:bl_alkilu/views/categoryProducts/view.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final String? image,name;

  const CategoryCard({Key? key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(()=>const CategoryProductsView()),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: categoryCardRadius,
            color: Colors.white,
            boxShadow: categoryShadow,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image!),
              CustomText(text: name,fontSize: 16,fontWeight: FontWeight.w600,)
            ],
          ),
        ),
      ),
    );
  }
}
