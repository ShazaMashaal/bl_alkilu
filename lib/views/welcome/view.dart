import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/welcome/components/buttons.dart';
import 'package:bl_alkilu/widgets/custom_button.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/purple_scaffold.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleScaffold(

          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
               runAlignment: WrapAlignment.center,
              spacing: 65,
              children:  const [
                CustomText(
                  text: "Welcome To",
                  fontSize: 21,
                  color: Colors.white,
                ),
                CustomText(
                  text: "BI ALKILU",
                  fontSize: 41,
                  color: Colors.white,
                ),
               Buttons()
              ],
            ),
          ),

    );
  }
}
