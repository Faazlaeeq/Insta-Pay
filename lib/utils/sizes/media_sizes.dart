import 'package:flutter/widgets.dart';

ScreenHeight(double val, BuildContext context) {
  return MediaQuery.of(context).size.height * val;
}

ScreenWidth(double val, BuildContext context) {
  return MediaQuery.of(context).size.width * val;
}
