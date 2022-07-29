import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/images/images.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [getSvgPicture("assets/logo.svg")]),
      ),
    );
  }
}
