import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/strings.dart';

import '../../global/colors.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({Key? key, required this.onProfileClicked}) : super(key: key);
  final Function() onProfileClicked;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      title:
          const Text(syncLab, style: TextStyle(fontSize: 32, color: darkBlue)),
      actions: [
        IconButton(
            onPressed: () {},
            splashColor: transparent,
            highlightColor: transparent,
            icon: const Icon(Icons.notifications, color: darkBlue)),
        IconButton(
            onPressed: () {
              widget.onProfileClicked();
            },
            splashColor: transparent,
            highlightColor: transparent,
            icon: const Icon(Icons.account_circle, color: darkBlue))
      ],
    );
  }
}
