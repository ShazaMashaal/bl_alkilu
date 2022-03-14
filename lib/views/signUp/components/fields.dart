import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 23,),
        Wrap(
          runSpacing: 15,
          children: const [

            InputFormField(hint: "Email",icon: Icons.email,),
            InputFormField(hint: "Password",icon: Icons.lock,secure: true,),
            InputFormField(hint: "Confirm Password",icon: Icons.lock,secure: true,),
            InputFormField(hint: "Address",icon: Icons.location_on),
            InputFormField(hint: "Phone Number",icon: Icons.phone),
          ],
        ),
      ],
    );
  }
}
