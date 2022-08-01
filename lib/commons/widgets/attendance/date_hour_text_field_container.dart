import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/widgets/attendance/time_picker.dart';

import 'date_picker.dart';

class DateHourTextField extends StatefulWidget {
  const DateHourTextField({Key? key}) : super(key: key);

  @override
  State<DateHourTextField> createState() => _DateHourTextFieldState();
}

class _DateHourTextFieldState extends State<DateHourTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [DatePicker(), TimePicker()]),
      ]
    );
  }
}
