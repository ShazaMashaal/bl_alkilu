import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/constants/shadows.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, constraints) => Container(
        decoration: const BoxDecoration(
            borderRadius: categoryCardRadius,
            color: Colors.white,
            boxShadow: categoryShadow),
        child: Stack(

          children: [
            Positioned(right: 0,
            top: constraints.maxHeight/2,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: mintGreenColor,
              child: CustomText(text: "150",),
            ),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                ClipRRect(
                  borderRadius: productImageRadius,
                  child: Image.network(
                      "https://previews.123rf.com/images/diamant24/diamant241303/diamant24130300081/18456654-fried-fish-on-white-plate-with-knife-and-fork-closeup.jpg",
                      fit: BoxFit.cover,
                      height: constraints.maxHeight / 2),
                ),
                Padding(
                  padding:const EdgeInsets.all(5) ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: const [
                      CustomText(
                        text: "Tilapia fish",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: "1 kilo",
                        fontSize: 12,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    decoration: const BoxDecoration(
                      color: appPurpleColor,
                      borderRadius: BorderRadius.only(bottomLeft: const Radius.circular(30),bottomRight: const Radius.circular(30) )
                    ),
                    child: const Center(child: CustomText(text: "Add To Basket",color: Colors.white,fontWeight: FontWeight.w600,)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
