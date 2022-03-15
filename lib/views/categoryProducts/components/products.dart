import 'package:bl_alkilu/views/categoryProducts/widgets/product_card.dart';
import 'package:flutter/material.dart';


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
      itemBuilder: (BuildContext context,int index)=> ProductCard(
        price: "50",
        image: "https://previews.123rf.com/images/diamant24/diamant241303/diamant24130300081/18456654-fried-fish-on-white-plate-with-knife-and-fork-closeup.jpg",
        name: "Tilapia fish",
        onTap: ()=>print("added"),
      ),
    );
  }
}
