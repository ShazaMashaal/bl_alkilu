import 'package:bl_alkilu/widgets/home_bar.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';
import 'components/add_coupon.dart';
import 'components/items.dart';
import 'components/total_price_and_submit.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){FocusScope.of(context).unfocus();
        TextEditingController().clear();},
      child: const WhiteScaffold(
        children: [
          HomeBar(),
          PageTitle(title: "Basket",),
          Items(),
          AddCoupon(),
          TotalPriceAndSubmit()
        ],
      ),
    );
  }
}
