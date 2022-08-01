import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset("assets/wave.png"),
      const Text(
        "Nome Dipendente",
        style: TextStyle(fontSize: 36, color: white),
      )
    ]);
  }
}