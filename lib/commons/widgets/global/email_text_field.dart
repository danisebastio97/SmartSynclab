import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: const InputDecoration(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: smoke)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: blue)),
          hintText: email,
          hintStyle: TextStyle(color: smoke)),
      style: const TextStyle(fontSize: 17),
      cursorColor: blue,
      textAlignVertical: TextAlignVertical.bottom,
      textInputAction: TextInputAction.next,
    );
  }
}
