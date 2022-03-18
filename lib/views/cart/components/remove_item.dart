import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';

class RemoveItem extends StatelessWidget {
  const RemoveItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Positioned(
      right: 0,
      top: 0,
      child: CircleAvatar(
        backgroundColor: appPurpleColor,
        child: Center(child: Icon(Icons.close,size: 15,color: Colors.white,)),
        radius: 12,
      ),
    );
  }
}
