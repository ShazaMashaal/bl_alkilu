import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class CategoryProductsView extends StatelessWidget {
  const CategoryProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteScaffold(
      hasAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/images/filter.png")
        ],
        leading:IconButton(icon: Icon(Icons.arrow_back_ios_rounded),onPressed: ()=>Get.back(),),
        iconTheme:IconThemeData(color: Colors.black) ,
        elevation: 0,
        title: CustomText(text:"Fish",fontSize:20,fontWeight: FontWeight.bold,),
      ),
      hasNavBAr: true,
      children: [

      ],
    );
  }
}
