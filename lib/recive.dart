import 'package:flutter/material.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/global_colors/colors.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';

class Receive extends StatelessWidget {
  const Receive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: AppColors.bg,
                child: Column(children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: Br(20),
                        color: AppColors.card_bg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              txtWidget("Receive Money", 30),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                      G_Paths().imagePath("close-circle3.png")))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: Image(
                                image:
                                    AssetImage(G_Paths().imagePath("qr.png"))),
                          )
                        ],
                      )),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(left: 5),
                    child: txtWidget("Other Options", 30),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: Br(20),
                      color: AppColors.fg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          txtWidget("Your Pay ID", 20),
                          txtWidget("xyz@524899652", 20, colorHex: "B0BEC5"),
                          Image.asset(G_Paths().imagePath("copy.png"))
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: Br(20),
                      color: AppColors.fg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          txtWidget("Show bank account details", 20),
                          Image.asset(G_Paths().imagePath("arrow-right.png"))
                        ]),
                  )
                ]))));
  }
}
