import 'package:flutter/material.dart';

import '../../global/strings.dart';
import '../global/custom_outlined_button.dart';

class ProfileOutlinedButton extends StatefulWidget {
  const ProfileOutlinedButton({Key? key}) : super(key: key);

  @override
  State<ProfileOutlinedButton> createState() => _ProfileOutlinedButtonState();
}

class _ProfileOutlinedButtonState extends State<ProfileOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
      child: const CustomOutlinedButton(label: changePassword),
    );
  }
}