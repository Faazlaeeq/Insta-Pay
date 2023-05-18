import 'package:flutter/material.dart';

import '../path/paths.dart';
import '../sizes/borderradius.dart';

homeButton2(
  String text,
  String image,
) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: const Color(0xff242042), borderRadius: Br(15)),
          child: Image(image: AssetImage(G_Paths().imagePath("$image.png"))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Color(0xffAAAAAA),
                  fontFamily: 'spartan',
                  fontSize: 16),
            ),
          ),
        )
      ],
    ),
  );
}
