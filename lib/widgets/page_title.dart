import 'package:flutter/material.dart';

import 'custom_text.dart';

class PageTitle extends StatelessWidget {
  final String? title;

  const PageTitle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: title,
      fontSize: 18,
      verticalMargin: 10,
      fontWeight: FontWeight.bold,
      alignment: Alignment.centerLeft,
    );
  }
}
