import 'package:flutter/material.dart';
import 'package:task1/routes.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

class Open extends StatelessWidget {
  const Open({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Image.asset("assets/images/logo.png"),
    //Image.asset("assets/images/logo2.png"),
    //Image.asset("assets/images/slider.png"),

    return Container(
      color: const Color(0xFF181A20),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            height: ScreenHeight(.5, context),
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .45,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Image.asset("assets/images/logo2.png"),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginRoute);
                  },
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 50),
                    child: Image.asset(
                      "assets/images/slider.png",
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
