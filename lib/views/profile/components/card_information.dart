import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTitle(
          title: "Card Information",
        ),
        Row(
          children:  [
            Expanded(child: InputFormField(hint: "Card Name",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit))),
            SizedBox(width: 20,),
            Expanded(child: SizedBox()),
          ],
        ),
        InputFormField(hint: "Card Name",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit)),

      ],
    );
  }
}
