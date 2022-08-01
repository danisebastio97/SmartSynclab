import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class UnderlinedTextField extends StatefulWidget {
  const UnderlinedTextField(
      {Key? key, this.readOnly, required this.label, required this.hintColor})
      : super(key: key);
  final bool? readOnly;
  final String label;
  final Color hintColor;

  @override
  State<UnderlinedTextField> createState() => _UnderlinedTextFieldState();
}

class _UnderlinedTextFieldState extends State<UnderlinedTextField> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: (widget.readOnly != null) ? widget.readOnly! : false,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
          enabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide(color: smoke)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: (widget.readOnly != null) ? smoke : blue,
          )),
          hintText: widget.label,
          hintStyle: TextStyle(color: widget.hintColor)),
      style: const TextStyle(fontSize: 17),
      cursorColor: blue,
      textAlignVertical: TextAlignVertical.bottom,
      textInputAction: TextInputAction.next,
    );
  }
}
