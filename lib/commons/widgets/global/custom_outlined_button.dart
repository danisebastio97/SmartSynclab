import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'dart:developer';

class CustomOutlinedButton extends StatefulWidget {
  const CustomOutlinedButton({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton(
        onPressed: () {
          log("cliccato");
        },
        style: OutlinedButton.styleFrom(
            elevation: 5,
            backgroundColor: white,
            side: const BorderSide(color: darkBlue, width: 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14))),
        child: Text(
          widget.label,
          style: const TextStyle(color: darkBlue, fontSize: 17),
        ),
      ),
    );
  }
}
