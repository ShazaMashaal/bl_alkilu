import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/raduis.dart';
import 'package:bl_alkilu/constants/shadows.dart';
import 'package:bl_alkilu/views/categoryProducts/widgets/product_price.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/price_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        borderRadius: categoryCardRadius,
        color: Colors.white,
        boxShadow: categoryShadow
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment. stretch,
          children: [
            Expanded(flex:1,child: Image.network("https://upload.wikimedia.org/wikipedia/en/3/37/Meeza_Egyptian_company_logo.png",)),
            Expanded(flex:3,child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 15, 10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,
                      children: [
                        CustomText(text: "- Number Of Products : 4",fontSize: 12,),
                        CustomText(text: "- Status: in shipping",fontSize: 12,),
                        CustomText(text: "- Order Date: 12/5/2020",fontSize: 12,),
                        CustomText(text: "- Delivery Date: 12/5/2020",fontSize: 12,),
                        CustomText(text: "- Report a problem",fontSize: 12,),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      crossAxisAlignment:CrossAxisAlignment.end ,
                      children: [
                        ProductPrice(fontSize: 12,price: "150",radius: 25,),
                        CustomButton(text: "Show The Product",buttonColor: appPurpleColor,verticalPadding: 10,fontSize: 10,fontColor: Colors.white,)
                      ],
                    ),
                  )
                ],
              ),
            )),

          ],
        ),
      ),
    );
  }
}
