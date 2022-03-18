import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/decorations.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/cart/components/product_name_and_price.dart';
import 'package:bl_alkilu/views/cart/components/quantity.dart';
import 'package:bl_alkilu/views/cart/components/rating.dart';
import 'package:bl_alkilu/views/cart/components/remove_item.dart';
import 'package:bl_alkilu/views/cart/widgets/item_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      itemCount: 2,
      shrinkWrap: true,
      padding: const EdgeInsets.all(3),
      itemBuilder: (BuildContext context, int index) => Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 6),
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
                          const ProductNameAndPrice(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [Rating(), Quantity()],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
          const RemoveItem()
        ],
      ),
    );
  }
}
