import 'package:flutter/material.dart';

import 'widgets/product_card.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: const EdgeInsets.all(2),
      itemCount: 6,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 35,
        crossAxisSpacing: 40,
        childAspectRatio: 1/1.5
      ),
      itemBuilder: (BuildContext context,int index)=>const ProductCard(),
    );
  }
}
