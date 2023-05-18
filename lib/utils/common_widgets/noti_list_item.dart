import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

notiListItem(
    BuildContext context, String h1, String h2, String sub, String image) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    decoration: BoxDecoration(borderRadius: Br(50)),
    child: ListTile(
      contentPadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: Br(20)),
      minLeadingWidth: ScreenWidth(.2, context),
      trailing: Container(
        padding: const EdgeInsets.only(top: 10),
        child: SvgPicture.asset(
          G_Paths().imagePath("notifi_icon.svg"),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: txtWidget(h1, 18, fontFamily: "Nunito", colorHex: "ECEFF1"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: txtWidget(h2, 14, fontFamily: "Nunito", colorHex: "9A9B9B"),
          ),
        ],
      ),
      subtitle: txtWidget(sub, 12, colorHex: "9A9B9B", fontFamily: "Nunito"),
    ),
  );
}
