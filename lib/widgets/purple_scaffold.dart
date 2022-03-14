import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:flutter/material.dart';

class PurpleScaffold extends StatelessWidget {
  final Widget? child;

  const PurpleScaffold({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: appPurpleColor,elevation: 0,),
      backgroundColor: appPurpleColor,
      body: SafeArea(child:Center(
          child: SingleChildScrollView(
          padding: defaultPadding,
          child:child),
      )));
  }
}
