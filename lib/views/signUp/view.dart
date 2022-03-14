
import 'package:bl_alkilu/views/signUp/components/buttons.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/purple_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/fields.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleScaffold(
      child: Column(
        children:  const [
          CustomText(
            text: "Sign Up",
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
