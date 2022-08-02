import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';
import 'package:smart_synclab/commons/global/strings.dart';
import 'package:smart_synclab/commons/widgets/global/custom_button.dart';
import 'package:smart_synclab/commons/widgets/login/login_text_field_container.dart';
import 'package:smart_synclab/view/home/home_view.dart';

import '../../commons/global/global.dart';
import '../../commons/widgets/global/logo.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  CustomButton(
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
