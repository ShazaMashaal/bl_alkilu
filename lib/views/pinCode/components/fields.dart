import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Fields extends StatelessWidget {
  const Fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PinCodeTextField(

      length: 5,
      obscureText: false,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        borderWidth: 0,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(9),
        selectedFillColor: mintGreenColor,
        inactiveFillColor: Colors.white,
        fieldHeight: 64,
        fieldWidth: 61,
        disabledColor: Colors.transparent,
        activeFillColor:Colors.white,
        activeColor: Colors.transparent,
        inactiveColor: Colors.transparent,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      // errorAnimationController: errorController,
      // controller: PinCodeCubit.of(context).pinCodeController,
      appContext: context, onChanged: (String value) {},
    );
  }
}
