import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class GlobalAppBar extends AppBar {
  GlobalAppBar({Key? key, required this.label, this.isLogout})
      : super(key: key);
  final String label;
  final bool? isLogout;

  @override
  State<GlobalAppBar> createState() => _GlobalAppBarState();
}

class _GlobalAppBarState extends State<GlobalAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: darkBlue),
            splashColor: transparent,
            highlightColor: transparent,
          ),
          Text(widget.label, style: const TextStyle(color: darkBlue)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                  (widget.isLogout == true)
                      ? Icons.logout
                      : (widget.isLogout == false)
                          ? Icons.archive
                          : Icons.calendar_month,
                  color: darkBlue),
              splashColor: transparent,
              highlightColor: transparent)
        ],
      ),
    );
  }
}
