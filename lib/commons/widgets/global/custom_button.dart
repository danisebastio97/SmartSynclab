import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {Key? key,
      required this.buttonColor,
      required this.buttonText,
      required this.onPress})
      : super(key: key);
  final Color buttonColor;
  final String buttonText;
  final void Function()? onPress;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: widget.onPress,
          style: ElevatedButton.styleFrom(
              primary: widget.buttonColor,
              textStyle: const TextStyle(fontSize: 17, color: white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          child: Text(widget.buttonText)),
    );
  }
}
