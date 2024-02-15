import 'package:flutter/material.dart';

import 'category.dart';

class categoryRow extends StatelessWidget {

  var opacity = 0.0;
  bool position=false;

  categoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        top: position? 320 : 420,
        left: 25,
        right: 25,
        duration: const Duration(milliseconds: 400),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: opacity,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                category("assets/images/capsule.png", "Drug",5),
                category("assets/images/virus.png", "Virus",10),
                category("assets/images/heart.png", "Physo",10),
                category("assets/images/app.png", "Other",12),

              ],
            ),
          ),
        ));
  }
}
