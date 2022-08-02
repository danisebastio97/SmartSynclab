import 'package:flutter/material.dart';

import '../../global/utils/disable_scroll_glow_behavior.dart';
import 'card_location.dart';

class GridLocations extends StatefulWidget {
  GridLocations({Key? key}) : super(key: key);
  final List<String> locationsList = ["Prova", "Ciao", "Ciao"];

  @override
  State<GridLocations> createState() => _GridLocationsState();
}

class _GridLocationsState extends State<GridLocations> {
  List<Widget> getGridElement() {
    List<Widget> cardGridList = [];
    for (var location in widget.locationsList) {
      CardLocation cardLocation = const CardLocation();
      cardGridList.add(cardLocation);
    }
    return cardGridList;
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: DisableScrollGlowBehavior(),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1.2,
          shrinkWrap: true,
          children: getGridElement(),
        ));
  }
}
