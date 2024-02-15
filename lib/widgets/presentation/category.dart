import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../text_widget.dart';

class category extends StatelessWidget {
  String asset = "";
  String txt = "";
  double padding = 0.0;

  category(String asset, String text, double padding);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              padding:  EdgeInsets.all(padding),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image(
                  image:
                  AssetImage(asset),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextWidget(
          txt,
          16,
          Colors.black,
          FontWeight.bold,
          letterSpace: 1,
        ),
      ],
    );;
  }
}
