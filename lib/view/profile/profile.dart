import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/global_app_bar.dart';
import 'package:smart_synclab/commons/widgets/profile/profile_image_container.dart';
import 'package:smart_synclab/commons/widgets/profile/profile_outlined_button.dart';

import '../../commons/widgets/profile/profile_text_field_container.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
