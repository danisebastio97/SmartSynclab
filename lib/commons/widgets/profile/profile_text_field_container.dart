import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../global/underlined_text_field.dart';

class ProfileTextFieldContainer extends StatelessWidget {
  const ProfileTextFieldContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 24),
      child: Column(
        children: const [
          UnderlinedTextField(label: "-", hintColor: black, readOnly: true),
          SizedBox(height: 16),
          UnderlinedTextField(label: "-", hintColor: black, readOnly: true),
          SizedBox(height: 16),
          UnderlinedTextField(label: "-", hintColor: black, readOnly: true),
          SizedBox(height: 16),
          UnderlinedTextField(label: "-", hintColor: black, readOnly: true)
        ],
      ),
    );
  }
}
