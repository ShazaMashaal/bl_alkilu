import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(child: InputFormField(hint: "First Name",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor)),
            SizedBox(width: 20,),
            Expanded(child: InputFormField(hint: "Last Name",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,)),


          ],
        ),
        const InputFormField(hint: "Address",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,),
        Row(
          children: const [
            Expanded(child: InputFormField(hint: "Building Number",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,isNumber: true,)),
            SizedBox(width: 20,),
            Expanded(child: SizedBox()),


          ],
        ),
        const InputFormField(hint: "Phone Number",fillColor: Colors.white,hintColor: appPurpleColor,textColor: appPurpleColor,isNumber: true,),
      ],
    );
  }
}
