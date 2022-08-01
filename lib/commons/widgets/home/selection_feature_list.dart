import 'package:flutter/material.dart';

import 'card_feature.dart';

class SelectionFeatureList extends StatefulWidget {
  const SelectionFeatureList({Key? key, required this.onCardFeatureClicked}) : super(key: key);
  final Function() onCardFeatureClicked;

  @override
  State<SelectionFeatureList> createState() => _SelectionFeatureListState();
}

class _SelectionFeatureListState extends State<SelectionFeatureList> {
  final List<String> listFeatures = ["Timbratura"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listFeatures.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        });
  }

  CardFeature getRow(int i) {
    return CardFeature(listFeatures: listFeatures, onCardFeatureClicked: widget.onCardFeatureClicked);
  }
}
