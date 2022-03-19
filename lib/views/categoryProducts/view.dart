import 'package:bl_alkilu/views/categoryProducts/components/category_product_app_bar.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'components/products.dart';

class CategoryProductsView extends StatelessWidget {
  const CategoryProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WhiteScaffold(
      hasAppBar: true,
      appBar: categoryProductAppBar(name: "Fish",context: context),
      hasNavBAr: true,
      children: const [
        Products()
      ],
    );
  }
}
