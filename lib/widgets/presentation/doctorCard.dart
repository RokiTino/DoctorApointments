import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../text_widget.dart';

class doctorCard extends StatelessWidget {
  String name = "";
  String specialist = "";
  AssetImage image = new AssetImage("");

  var opacity = 0.0;
  bool position=false;

  doctorCard(String nam, String spacilality, AssetImage imag);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            const SizedBox(width: 10,),
            CircleAvatar(
              radius: 30,
              backgroundImage: image,
              backgroundColor: Colors.blue,
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(name, 20, Colors.black,FontWeight.bold,letterSpace: 0,),
                const SizedBox(height: 5,),
                TextWidget(specialist, 17, Colors.black,FontWeight.bold,letterSpace: 0,),
                const SizedBox(height: 5,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Colors.orangeAccent,),
                    Icon(Icons.star,color: Colors.orangeAccent,),
                    Icon(Icons.star,color: Colors.orangeAccent,),
                    Icon(Icons.star,color: Colors.orangeAccent,),
                    Icon(Icons.star,color: Colors.orangeAccent,),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.navigation_sharp,color: Colors.blue,),
            const SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}