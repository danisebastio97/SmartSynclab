import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/widgets/home/home_app_bar.dart';
import 'package:smart_synclab/view/attendance/attendance.dart';
import 'package:smart_synclab/view/profile/profile.dart';

import '../../commons/widgets/home/selection_feature_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(onProfileClicked: () {
          onProfileClicked();
        }),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: SelectionFeatureList(
              onCardFeatureClicked: () {
                onCardFeatureClicked();
              },
            )));
  }

  onCardFeatureClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Attendance()));
  }

  onProfileClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Profile()));
  }

}
