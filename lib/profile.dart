import 'package:flutter/material.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/global_colors/colors.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "All Transactions",
      "Pending Transactions",
      "Refund Status",
      "Raise an Issue",
      "Help and Support",
      'About Us',
      "Terms and Conditions",
      "Feedback"
    ];
    return Container(
        color: AppColors.bg,
        child: SafeArea(
            child: Scaffold(
          body: Container(
              color: AppColors.bg,
              child: ListView(
                children: [
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
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: Container(
                                    width: ScreenWidth(0.23, context),
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Image.asset(
                                        G_Paths().imagePath("image 10.png")),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          txtWidget("Elsa", 35),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset(G_Paths()
                                                .imagePath("Group 751.png")),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Image.asset(G_Paths()
                                                    .imagePath(
                                                        "close-circle2.png")),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: txtWidget(
                                            "Level 4 Ace Member",
                                            20,
                                            colorHex: "B0BEC5",
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: ScreenWidth(.2, context),
                                            top: 10),
                                        alignment: Alignment.centerRight,
                                        child: txtWidget(
                                          "85%",
                                          15,
                                          colorHex: "B0BEC5",
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 7,
                                            child: Image(
                                              fit: BoxFit.contain,
                                              image: AssetImage(G_Paths()
                                                  .imagePath("Group 796.png")),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: txtWidget(
                                              "Lv 5",
                                              15,
                                              colorHex: "B0BEC5",
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: const BoxDecoration(),
                                child: Column(
                                  children: [
                                    txtWidget("1,208", 30, colorHex: "4D5DFA"),
                                    txtWidget("Transactions", 15,
                                        colorHex: "939FA4"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2),
                                decoration: const BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            color: Color(0xffF8F8F8), width: 1),
                                        left: BorderSide(
                                            color: Color(0xffF8F8F8),
                                            width: 1))),
                                child: Column(
                                  children: [
                                    txtWidget("786", 30, colorHex: "4D5DFA"),
                                    txtWidget("Points", 15, colorHex: "939FA4"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: const BoxDecoration(),
                                child: Column(
                                  children: [
                                    txtWidget("8", 30, colorHex: "4D5DFA"),
                                    txtWidget("Rank", 15, colorHex: "939FA4"),
                                  ],
                                ),
                              ),
                              Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenWidth(.01, context)),
                                decoration: BoxDecoration(
                                  borderRadius: Br(8),
                                  color: AppColors.fg,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      txtWidget("Explore", 15),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image(
                                          image: AssetImage(G_Paths()
                                              .imagePath("setting-5.png")))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenWidth(.01, context)),
                                decoration: BoxDecoration(
                                  borderRadius: Br(8),
                                  color: AppColors.fg,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      txtWidget("Edit Profile", 15),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image(
                                          image: AssetImage(G_Paths()
                                              .imagePath("user-edit.png")))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenWidth(.01, context)),
                                decoration: BoxDecoration(
                                  borderRadius: Br(8),
                                  color: AppColors.fg,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      txtWidget("Settings", 15),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image(
                                          image: AssetImage(
                                              G_Paths().imagePath("Union.png")))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenWidth(.01, context)),
                                decoration: BoxDecoration(
                                  borderRadius: Br(8),
                                  color: AppColors.fg,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      txtWidget("Share", 15),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image(
                                          image: AssetImage(G_Paths()
                                              .imagePath("Group7.png")))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: Br(20),
                      color: AppColors.card_bg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        int i = index + 1;
                        return ListTile(
                          trailing:
                              Image.asset(G_Paths().imagePath("Vector.png")),
                          leading: Image.asset(
                              G_Paths().imagePath("receipt-minus$i.png")),
                          title:
                              txtWidget(names[index], 20, fontFamily: 'Nunito'),
                        );
                      },
                      itemCount: 5,
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: Br(20),
                      color: AppColors.card_bg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        int i = index + 2;
                        return ListTile(
                          trailing:
                              Image.asset(G_Paths().imagePath("Vector.png")),
                          leading: Image.asset(
                              G_Paths().imagePath("receipt-minus$i.png")),
                          title: txtWidget(names[index + 5], 20,
                              fontFamily: 'Nunito'),
                        );
                      },
                      itemCount: 3,
                    ),
                  ))
                ],
              )),
        )));
  }
}
