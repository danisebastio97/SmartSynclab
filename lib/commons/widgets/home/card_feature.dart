import 'package:flutter/material.dart';
import 'package:smart_synclab/commons/global/colors.dart';

class CardFeature extends StatefulWidget {
  const CardFeature(
      {Key? key, required this.listFeatures, required this.onCardFeatureClicked}) : super(key: key);
  final List<String> listFeatures;
  final Function() onCardFeatureClicked;

  @override
  State<CardFeature> createState() => _CardFeatureState();
}

class _CardFeatureState extends State<CardFeature> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.onCardFeatureClicked();
        },
        child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Container(
                alignment: Alignment.topLeft,
                height: 137,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: cardFeatureColor),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(top: 24, left: 16),
                          child: Text(widget.listFeatures.first,
                              style: const TextStyle(
                                  color: darkBlue,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))),
                      Container(
                          padding: const EdgeInsets.only(
                              top: 11, bottom: 11, right: 20),
                          child: Image.asset("assets/card_feature.png"))
                    ]))));
  }
}
