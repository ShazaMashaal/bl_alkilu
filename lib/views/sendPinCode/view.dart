import 'package:bl_alkilu/views/sendPinCode/components/Fields.dart';
import 'package:bl_alkilu/views/sendPinCode/components/buttons.dart';
import 'package:bl_alkilu/widgets/purple_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/texts.dart';

class SendPinCodeView extends StatelessWidget {
  const SendPinCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleScaffold(
      child: Column(
        children: [
          Texts(),
          Fields(),
          Buttons()

        ],
      ),
    );
  }
}
