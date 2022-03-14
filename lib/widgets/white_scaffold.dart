import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:flutter/material.dart';


class WhiteScaffold extends StatelessWidget {
  const WhiteScaffold({Key? key, this.children}) : super(key: key);
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          padding: defaultPadding,
          child: Column(
            children: children!,
          ),
        ),
      ),
    );
  }
}
