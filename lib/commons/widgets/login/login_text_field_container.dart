import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/password_text_field.dart';

import '../global/underlined_text_field.dart';

class LoginTextFieldContainer extends StatelessWidget {
  const LoginTextFieldContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UnderlinedTextField(label: email, hintColor: smoke),
        const SizedBox(height: 24),
        const PasswordTextField(),
        Container(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  forgottenPassword,
                  style: TextStyle(color: blue),
                )))
      ],
    );
  }
}
