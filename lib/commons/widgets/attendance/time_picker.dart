import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../global/colors.dart';
import '../../global/global.dart';
import '../../global/strings.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
          width: width / 2.3,
          child: const Text(
            hourPlaceHolder,
            style: TextStyle(color: darkBlue),
          )),
      const SizedBox(height: 6),
      Container(
          padding: const EdgeInsets.only(left: 18, right: 76),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: smoke)),
          width: width / 2.3,
          height: 44,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(Icons.schedule, color: darkBlue),
            Text(DateFormat("HH:mm").format(DateTime.now())),
            Container()
          ]))
    ]);
  }
}
