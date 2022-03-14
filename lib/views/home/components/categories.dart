import 'package:bl_alkilu/views/home/widgets/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      padding: const EdgeInsets.all(2),
        shrinkWrap: true,
        itemCount: 7,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 15,
      childAspectRatio: .9/.75,
      crossAxisSpacing: 45,
      crossAxisCount: 2,
    ), itemBuilder: (context,index)=>
    const CategoryCard(image: "assets/images/fish.png",name: "Fish",)
    );
  }
}
