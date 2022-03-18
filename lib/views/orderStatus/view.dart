import 'package:bl_alkilu/widgets/home_bar.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/orders.dart';

class OrderStatusView extends StatelessWidget {
  const OrderStatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WhiteScaffold(
      children: [
         HomeBar(),
        PageTitle(title: "Order Status",),
        Orders()

      ],
    );
  }
}
