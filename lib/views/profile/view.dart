import 'package:bl_alkilu/constants/colors.dart';
import 'package:bl_alkilu/constants/dimenssion.dart';
import 'package:bl_alkilu/views/profile/components/user_photo.dart';
import 'package:bl_alkilu/widgets/custom_text.dart';
import 'package:bl_alkilu/widgets/home_bar.dart';
import 'package:bl_alkilu/widgets/page_title.dart';
import 'package:bl_alkilu/widgets/white_scaffold.dart';
import 'package:flutter/material.dart';

import 'components/buttons.dart';
import 'components/card_information.dart';
import 'components/change_password.dart';
import 'components/fields.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final radius=sizeFromWidth(6);
    return GestureDetector(
      onTap: (){
      FocusScope.of(context).unfocus();
      TextEditingController().clear();
      },
      child: WhiteScaffold(
        children: [
          const HomeBar(),
          const PageTitle(title: "Profile Personally",),
          const SizedBox(height: 15,),
          UserPhoto(radius:radius),
          const SizedBox(height: 25,),
          const Fields(),
          const ChangePassword(),
          const CardInformation(),
          const SizedBox(height: 15,),
          const Buttons()

        ],
      ),
    );
  }
}
