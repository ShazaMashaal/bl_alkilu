import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/decorations.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/cart/widgets/itemImage.dart';
import 'package:bl_alkilu/views/categoryProducts/widgets/product_price.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      itemCount: 2,
      shrinkWrap: true,
      padding: const EdgeInsets.all(3),
      itemBuilder: (BuildContext context, int index) => Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: sizeFromHeight(5.5),
        decoration: itemDecoration,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            children: [
              ItemImage(
                image:
                    "https://static01.nyt.com/images/2019/10/06/well/meat1/meat1-superJumbo.jpg",
                width: constraints.maxWidth / 2.5,
                height: constraints.maxHeight,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 20, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomText(
                            text: "Lamb Meat",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          ProductPrice(
                            fontSize: 12,
                            price: "50",
                            top: 0,
                            radius: 20,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(

                            itemBuilder: (BuildContext context, int index) =>
                                const Icon(
                              Icons.star,
                              color: appPurpleColor,
                                  size: 20,
                            ),
                            onRatingUpdate: (double value) {},
                            itemCount: 5,
                            itemSize: 20,
                            direction: Axis.horizontal,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
