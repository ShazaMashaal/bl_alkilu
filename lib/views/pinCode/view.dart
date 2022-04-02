import 'package:bl_alkilu/views/pinCode/components/texts.dart';
import 'package:bl_alkilu/widgets/purple_scaffold.dart';
import 'package:flutter/material.dart';
import 'components/buttons.dart';
import 'components/fields.dart';

class PinCodeView extends StatelessWidget {
  const PinCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        TextEditingController().clear();
      },
      child: PurpleScaffold(
        child: Column(
          children: const [
            Texts(),
            Fields(),
            SizedBox(
              height: 70,
            ),
            Buttons()
          ],
        ),
      ),
    );
  }
}
