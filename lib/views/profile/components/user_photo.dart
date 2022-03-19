import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({Key? key,  this.radius}) : super(key: key);
    final double? radius;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: appPurpleColor,
          radius: radius!+1,
          child: CircleAvatar(
            radius: radius,
            backgroundColor: Colors.white,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Icon(Icons.camera_alt_outlined,color: appPurpleColor,),
                CustomText(text: "Add a profile picture",fontSize: 12,color: Color(0xffBCBCBC),)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: IconButton(icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.edit_outlined,color: appPurpleColor,)),onPressed: (){},),
        )
      ],
    );
  }
}
