import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/password_text_field.dart';

import '../global/email_text_field.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EmailTextField(),
        const SizedBox(height: 24),
        const PasswordTextField(),
        Container(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {}, child: const Text(forgottenPassword)))
      ],
    );
  }
}
