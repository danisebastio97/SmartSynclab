import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final passwordController = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: smoke)),
            focusedBorder:
                const UnderlineInputBorder(borderSide: BorderSide(color: blue)),
            hintText: password,
            hintStyle: const TextStyle(color: smoke),
            suffixIcon: IconButton(
              icon: (hidePassword)
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
            )),
        cursorColor: blue,
        textAlignVertical: TextAlignVertical.bottom,
        style: const TextStyle(fontSize: 17),
        obscureText: hidePassword);
  }
}
