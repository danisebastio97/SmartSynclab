import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/attendance/attendance_bottom_container.dart';
import 'package:smart_synclab/commons/widgets/attendance/date_hour_text_field_container.dart';
import 'package:smart_synclab/commons/widgets/attendance/grid_locations.dart';
import 'package:smart_synclab/commons/widgets/global/custom_button.dart';

import '../../commons/global/utils/disable_scroll_glow_behavior.dart';
import '../../commons/widgets/attendance/button_checked.dart';
import '../../commons/widgets/attendance/button_unchecked.dart';
import '../../commons/widgets/global/global_app_bar.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(label: attendance, isLogout: false),
      body: ScrollConfiguration(
        behavior: DisableScrollGlowBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 16),
            child: Column(children: [
              const DateHourTextField(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonChecked(
                    label: entrance,
                  ),
                  ButtonUnchecked(label: leaving),
                ],
              ),
              const SizedBox(height: 16),
              GridLocations(),
              const SizedBox(height: 12),
              CustomButton(
                  buttonColor: green, buttonText: save, onPress: () {}),
              const SizedBox(height: 12),
              const AttendanceBottomContainer(
                listAttendances: [
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  ""
                ],
              ),
              const SizedBox(height: 16)
            ]),
          ),
        ),
      ),
    );
  }
}
