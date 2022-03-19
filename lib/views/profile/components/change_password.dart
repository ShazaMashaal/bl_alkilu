import 'package:bl_alkilu/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: "Change Password ?",
      color: Colors.grey,
      alignment: Alignment.centerRight,
    );
  }
}
