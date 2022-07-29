import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/widgets/home/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: HomeAppBar(), body: Container(
      padding: const EdgeInsets.only(left: 16, right: 16)
    ));
  }
}
