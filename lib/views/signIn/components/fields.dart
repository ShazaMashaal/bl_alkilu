import 'package:bl_alkilu/widgets/custom_text_button.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 60,
        ),
        InputFormField(hint: "Email",icon: Icons.email,enabledBorderColor: Colors.white,),
        SizedBox(height: 23,),
        InputFormField(hint: "Password",icon: Icons.lock,secure: true,enabledBorderColor: Colors.white,),
        SizedBox(height: 7,),

      ],
    );
  }
}
