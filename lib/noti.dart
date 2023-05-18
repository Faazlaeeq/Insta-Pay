import 'package:flutter/material.dart';
import 'package:task1/utils/common_widgets/noti_list_item.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/global_colors/colors.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

class Noti extends StatelessWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: ScreenHeight(.7, context),
            decoration:
                BoxDecoration(borderRadius: Br(20), color: AppColors.card_bg),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          child: txtWidget("Notifications", 26),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 50,
                          child: TextButton(
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            child: Image(
                                image: AssetImage(
                                    G_Paths().imagePath("close-circle.png"))),
                          ),
                        )
                      ]),
                ),
                Expanded(
                    flex: 4,
                    child: ListView(
                      children: [
                        notiListItem(
                            context,
                            "Recharge Completed",
                            "Your last recharge on 9847229989 of 199 rs has been succesfully completed.",
                            "May 20  - 12:32 Pm",
                            "notifi_icon.svg"),
                        notiListItem(
                            context,
                            "Recharge Completed",
                            "Your last recharge on 9847229989 of 199 rs has been succesfully completed.",
                            "May 20  - 12:32 Pm",
                            "notifi_icon.svg"),
                        notiListItem(
                            context,
                            "Recharge Completed",
                            "Your last recharge on 9847229989 of 199 rs has been succesfully completed.",
                            "May 20  - 12:32 Pm",
                            "notifi_icon.svg"),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, top: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          child: txtWidget("Recent Notifications", 26),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 50,
                          child: TextButton(
                            onPressed: (() {
                              // Navigator.pop(context);
                            }),
                            child: Image(
                                image: AssetImage(
                                    G_Paths().imagePath("setting-4.png"))),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
