import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class CardLocation extends StatefulWidget {
  const CardLocation({Key? key}) : super(key: key);

  @override
  State<CardLocation> createState() => _CardLocationState();
}

class _CardLocationState extends State<CardLocation> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(width: 1, color: blue)));
  }
}
