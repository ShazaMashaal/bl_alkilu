import 'package:bl_alkilu/views/home/components/home_bar.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/items.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteScaffold(
      children: [
        HomeBar(),
        PageTitle(title: "Basket",),
        Items(),
      ],
    );
  }
}
