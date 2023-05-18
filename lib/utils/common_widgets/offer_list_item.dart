import 'package:flutter/material.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

offerListItem(BuildContext context, String h1, String h2, String sub, int color,
    String image) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(borderRadius: Br(50)),
    child: ListTile(
      contentPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: Br(20)),
      minLeadingWidth: ScreenWidth(.2, context),
      tileColor: Color(color),
      leading: Container(
          padding: EdgeInsets.zero,
          child: Image(
            image: AssetImage(G_Paths().imagePath(image)),
          )),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          txtWidget(h1, 18, fontFamily: "Nunito", colorHex: "ECEFF1"),
          txtWidget(h2, 17, fontFamily: "Nunito", colorHex: "ECEFF1")
        ],
      ),
      subtitle: txtWidget(sub, 12, colorHex: "B0BEC5", fontFamily: "Nunito"),
    ),
  );
}
