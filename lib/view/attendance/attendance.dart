import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/attendance/date_hour_text_field_container.dart';

import '../../commons/widgets/attendance/button_checked.dart';
import '../../commons/widgets/attendance/button_unchecked.dart';
import '../../commons/widgets/global/global_app_bar.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(label: attendance, isLogout: false),
      body: Container(
        padding: const EdgeInsets.only(left: 13, right: 13, top: 16),
        child: Column(
          children: [
            const DateHourTextField(),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonChecked(
                  label: entrance,
                ),
                ButtonUnchecked(label: leaving)
              ],
            )
          ],
        ),
      ),
    );
  }
}
