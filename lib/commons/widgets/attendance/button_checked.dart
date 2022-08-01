import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/global.dart';

class ButtonChecked extends StatefulWidget {
  const ButtonChecked({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  State<ButtonChecked> createState() => _ButtonCheckedState();
}

class _ButtonCheckedState extends State<ButtonChecked> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44,
        width: width / 2.3,
        padding: const EdgeInsets.only(left: 13),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(14), color: blue),
        child: Row(children: [
          const Icon(Icons.check_circle, color: white),
          const SizedBox(width: 16),
          Text(widget.label, style: const TextStyle(color: white, fontSize: 16))
        ]));
  }
}
