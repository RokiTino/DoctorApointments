import 'package:flutter/material.dart';

import '../../res/lists.dart';
import 'doctorCard.dart';

class doctorList extends StatelessWidget {

  var opacity = 0.0;
  bool position=false;

  doctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedPositioned(
        top: position?460:550,
        left: 20,
        right: 20,
        duration: const Duration(milliseconds: 400),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: opacity,
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 300),
            child: SizedBox(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child:
                Column(
                  children: [
                    doctorCard(names[0], spacilality[0], images[0]),
                    doctorCard(names[1], spacilality[1], images[1]),
                    doctorCard(names[2], spacilality[2], images[2]),
                  ],
                ),

              ),
            ),
          ),
        )
    );
  }
}