import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/utils/disable_scroll_glow_behavior.dart';

import '../../global/strings.dart';

class AttendanceBottomContainer extends StatefulWidget {
  const AttendanceBottomContainer({Key? key, required this.listAttendances})
      : super(key: key);
  final List<String> listAttendances;

  @override
  State<AttendanceBottomContainer> createState() =>
      _AttendanceBottomContainerState();
}

class _AttendanceBottomContainerState extends State<AttendanceBottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(summary,
              style: TextStyle(
                  fontSize: 16, color: black, fontWeight: FontWeight.bold))),
      const SizedBox(height: 10),
      ScrollConfiguration(
          behavior: DisableScrollGlowBehavior(),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.listAttendances.length,
              itemBuilder: (BuildContext context, int position) {
                return getRow(position);
              })),
      const SizedBox(height: 10),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
        Text(totalHours,
            style: TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.bold)),
        Text("08:00",
            style: TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.bold))
      ])
    ]);
  }

  Column getRow(int i) {
    return Column(children: [
      Container(
          color: (i % 2 == 0) ? lightGrey : Colors.transparent,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              alignment: Alignment.center,
              height: 36,
              padding: const EdgeInsets.only(left: 8),
              child: Text((i % 2 == 0) ? entrance : leaving,
                  style: const TextStyle(color: black)),
            ),
            Container(
                alignment: Alignment.center,
                height: 36,
                padding: const EdgeInsets.only(right: 8),
                child: const Text("09:00", style: TextStyle(color: black))),
          ]))
    ]);
  }
}
