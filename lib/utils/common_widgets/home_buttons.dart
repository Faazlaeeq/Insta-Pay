import 'package:flutter/material.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

import '../path/paths.dart';
import '../sizes/borderradius.dart';

homeButton(String text, String iconName, Color bg, Color iconBg,
    BuildContext context) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.all(2),
    decoration: BoxDecoration(
      // border: AppTesting().Tborder(),
      borderRadius: Br(10),
      color: bg,
    ),
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: Br(10),
                color: iconBg,
              ),
              child: Image(
                image: AssetImage(G_Paths().imagePath(iconName)),
              )),
          Container(
              width: ScreenWidth(0.319, context),
              padding: const EdgeInsets.all(15),
              child: Text(
                text,
                style: const TextStyle(
                    fontFamily: 'spartan', color: Colors.white, fontSize: 15),
              ))
        ],
      ),
    ),
  );
}
