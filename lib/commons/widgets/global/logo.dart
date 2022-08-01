import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../images/images.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      getSvgPicture("assets/logo.svg"),
      const SizedBox(height: 24),
      (title != null) ? Text(title!, style: const TextStyle(color: grey, fontSize: 17)) : Container()
    ]);
  }
}
