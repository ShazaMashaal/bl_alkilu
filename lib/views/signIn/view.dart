import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/signIn/components/buttons.dart';
import 'package:bl_alkilu/views/signIn/components/fields.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/custom_text_button.dart';
import 'package:bl_alkilu/widgets/input_form_field.dart';
import 'package:bl_alkilu/widgets/purple_scaffold.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleScaffold(
      child: Column(
        children: const [
          CustomText(
            text: "Sign In",
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Colors.white,
            alignment: Alignment.centerLeft,
          ),

          Fields(),
          Buttons()
        ],
      ),
    );
  }
}
