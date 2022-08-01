import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/global.dart';

class ButtonUnchecked extends StatefulWidget {
  const ButtonUnchecked({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  State<ButtonUnchecked> createState() => _ButtonUncheckedState();
}

class _ButtonUncheckedState extends State<ButtonUnchecked> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 13),
        height: 44,
        width: width / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: disableGray,
            border: Border.all(color: disableDarkGray, width: 1)),
        child: Row(children: [
          const Icon(Icons.circle_outlined, color: disableDarkGray),
          const SizedBox(width: 16),
          Text(widget.label,
              style: const TextStyle(color: disableDarkGray, fontSize: 16))
        ]));
  }
}
