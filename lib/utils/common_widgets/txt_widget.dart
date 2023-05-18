import 'package:flutter/cupertino.dart';

txtWidget(String txt, double fontSize,
    {String fontFamily = "Spartan", String colorHex = "FFFFFF"}) {
  return Text(
    txt,
    style: TextStyle(
        color: Color(int.parse("0xff$colorHex")),
        fontSize: fontSize,
        fontFamily: fontFamily),
  );
}
