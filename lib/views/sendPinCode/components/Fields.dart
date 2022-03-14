import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Form(child:
      InputFormField(hint: "Email",icon: Icons.email,),
    );
  }
}
