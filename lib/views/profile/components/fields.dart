import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(child: InputFormField(hint: "First Name",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit))),
              SizedBox(width: 20,),
              Expanded(child: InputFormField(hint: "Last Name",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit))),
            ],
          ),
          const InputFormField(hint: "Email",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit)),
          const InputFormField(hint: "Phone Number",isNumber:true,hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit)),
          const InputFormField(hint: "Address",hintColor: appPurpleColor,fillColor: Colors.white,suffixIcon: Icon(Icons.edit),)
        ],
      ),
    );
  }
}
