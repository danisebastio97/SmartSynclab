import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/global_app_bar.dart';
import 'package:smart_synclab/commons/widgets/profile/profile_image_container.dart';
import 'package:smart_synclab/commons/widgets/profile/profile_outlined_button.dart';

import '../../commons/widgets/profile/profile_text_field_container.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppBar(label: profile, isLogout: true),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ImageContainer(),
              ProfileTextFieldContainer(),
              ProfileOutlinedButton()
            ]));
  }
}
