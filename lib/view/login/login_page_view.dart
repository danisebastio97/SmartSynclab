import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/button.dart';
import 'package:smart_synclab/commons/widgets/login/login_text_field_container.dart';
import 'package:smart_synclab/view/home/home_view.dart';

import '../../commons/global/global.dart';
import '../../commons/widgets/global/logo.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Logo(title: welcome),
                  const LoginTextFieldContainer(),
                  Button(
                    buttonColor: blue,
                    buttonText: login,
                    onPress: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeView()),
                      );
                    },
                  )
                ])));
  }
}
