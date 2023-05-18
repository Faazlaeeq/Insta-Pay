import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/routes.dart';
import 'package:task1/utils/common_widgets/home_button2.dart';
import 'package:task1/utils/common_widgets/home_buttons.dart';
import 'package:task1/utils/common_widgets/offerListItem%20copy.dart';
import 'package:task1/utils/common_widgets/offer_list_item.dart';
import 'package:task1/utils/common_widgets/txt_widget.dart';
import 'package:task1/utils/fonts_size/font_size.dart';
import 'package:task1/utils/global_colors/colors.dart';
import 'package:task1/utils/path/paths.dart';
import 'package:task1/utils/sizes/borderradius.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

class Home extends StatefulWidget {
  const   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        elevation: 0,
        flexibleSpace: Container(
            decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.transparent,
                Color.fromARGB(148, 31, 34, 42),
                Color(0xff1F222A)
              ]),
        )),
        leadingWidth: 100,
        leading: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all(Colors.red),
          ),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.fg, width: 8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(G_Paths().imagePath("profile.png")),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.profile);
          },
        ),
        primary: true,
        actions: [
          Container(
            width: 90,
            height: 70,
            // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.noti);
              },
              child: SvgPicture.asset(
                G_Paths().imagePath("notifi_icon.svg"),
              ),
            ),
          )
        ],
        bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            padding: const EdgeInsets.only(left: 10, right: 10),
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
            labelStyle: const TextStyle(
                fontSize: 18, fontFamily: "Inter", fontWeight: FontWeight.bold),
            indicator: ShapeDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                  image:
                      AssetImage(G_Paths().imagePath("tabBar_indicator.png"))),
              // color: Colors.white,

              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10))),
            ),
            indicatorPadding: const EdgeInsets.only(right: 20, left: 20),
            controller: _tabController,
            tabs: const [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Balance",
              ),
              Tab(
                text: "Offers",
              ),
              Tab(
                text: "Rewards",
              )
            ]),
        centerTitle: true,
        title: Container(
          // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          height: 60,
          alignment: Alignment.center,
          child: TextField(
            // keyboardType: TextInputType.text,
            style: TextStyle(
              fontFamily: 'spartan',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.element_primary,
            ),
            // cursorHeight: 20,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                  left: 20, right: 10, bottom: 0, top: 40),
              fillColor: AppColors.fg,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              filled: true,
              hintText: "Search Users,ID’s etc",
              hintStyle: TextStyle(
                fontFamily: 'spartan',
                // fontSize: ,
                fontWeight: FontWeight.w600,
                color: AppColors.element_primary,
              ),
              suffixIcon: Icon(
                Icons.search_rounded,
                color: AppColors.element_primary,
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Money Transfer",
                      style: TextStyle(
                          fontFamily: 'spartan',
                          color: Colors.white,
                          fontSize: TSizes.heading),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: Br(10), color: AppColors.fg),
                      height: 30,
                      width: 80,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                        ),
                        child: Text(
                          "More   >",
                          style: TextStyle(
                              color: AppColors.hintText,
                              fontFamily: 'Nunito',
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          homeButton("Scan QR Code", "qr_icon.png",
                              AppColors.home_qr, AppColors.home_qr_icon, context),
                          homeButton(
                              "Send to Contact",
                              "sendToContact.png",
                              AppColors.home_contact,
                              AppColors.home_contact_icon,
                              context),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          homeButton(
                              "Send To Bank",
                              "sendToBank.png",
                              AppColors.home_STbank,
                              AppColors.home_STbank_icon,
                              context),
                          homeButton(
                              "Self Transfer",
                              "selfTransfer.png",
                              AppColors.home_SelfTrasfer,
                              AppColors.home_SelfTrasfer_icon,
                              context),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ScreenWidth(0.5, context),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          "Recharge & Bill Payments",
                          style: TextStyle(
                              fontFamily: 'spartan',
                              color: Colors.white,
                              fontSize: TSizes.heading),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: Br(10), color: AppColors.fg),
                      height: 30,
                      width: 80,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                        ),
                        child: Text(
                          "More   >",
                          style: TextStyle(
                              color: AppColors.hintText,
                              fontFamily: 'Nunito',
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButton(
                            "Mobile Recharge",
                            "mobilRechargepng.png",
                            AppColors.home_mobile_recharge,
                            AppColors.home_mobile_recharge_icon,
                            context),
                        homeButton(
                            "Electricity Bill",
                            "elecricityBill.png",
                            const Color(0xff652A5F),
                            const Color(0x1fFF823B),
                            context),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButton(
                            "DTH Recharge",
                            "dthRecharge.png",
                            const Color(0xff652A2A),
                            const Color(0x1f4BFF3B),
                            context),
                        homeButton(
                            "Postpaid bill",
                            "postpaid.png",
                            const Color(0xff2A4065),
                            const Color(0x1fFF3B8D),
                            context),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ScreenWidth(0.5, context),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          "Ticket Booking",
                          style: TextStyle(
                              fontFamily: 'spartan',
                              color: Colors.white,
                              fontSize: TSizes.heading),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    homeButton2("Movies", "movies"),
                    homeButton2("Trains", "train"),
                    homeButton2("Bus", "bus"),
                    homeButton2("Flights", "airplane"),
                    homeButton2("Car", "car"),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ScreenWidth(0.5, context),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          "More Services",
                          style: TextStyle(
                              fontFamily: 'spartan',
                              color: Colors.white,
                              fontSize: TSizes.heading),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  homeButton2("Invest", "investpng"),
                  homeButton2("Loans", "invest"),
                  homeButton2("Insurance", "Heart"),
                  homeButton2("Fast Tag", "fasttag"),
                ]),
              ),
            ],
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: Br(20),
                  color: AppColors.card_bg,
                ),
                // height: ScreenWidth(.8, context),
                child: Column(
                  children: [
                    Row(children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                  G_Paths().imagePath("b_stock.png")))),
                      Flexible(
                          flex: 2,
                          child: Column(
                            children: [
                              Text(
                                "Portfolio Value",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: ScreenWidth(.05, context),
                                    fontFamily: 'Spartan'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$54,375",
                                  style: TextStyle(
                                      color: AppColors.card_text_lg,
                                      fontSize: ScreenWidth(.1, context),
                                      fontFamily: 'Spartan',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Text(
                                "In 3 Accounts",
                                style: TextStyle(
                                    color: AppColors.card_text_lg,
                                    fontSize: ScreenWidth(.05, context),
                                    fontFamily: 'Spartan'),
                              ),
                            ],
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                  G_Paths().imagePath("b_back.png")))),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: const Color(0xff652A5F),
                                borderRadius: Br(15)),
                            child: Column(children: [
                              txtWidget(
                                "Federel Bank",
                                22,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: txtWidget("1142524899652", 14),
                              ),
                              txtWidget("16,456.05", 22),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: const Color(0xff442A65),
                                borderRadius: Br(15)),
                            child: Column(children: [
                              txtWidget(
                                "Federel Bank",
                                22,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: txtWidget("1142524899652", 14),
                              ),
                              txtWidget("16,456.05", 22),
                            ]),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: const Color(0xff2A6550),
                                borderRadius: Br(15)),
                            child: Column(children: [
                              txtWidget(
                                "Federel Bank",
                                22,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7),
                                child: txtWidget("1142524899652", 14),
                              ),
                              txtWidget("16,456.05", 22),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: ScreenWidth(.37, context),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(borderRadius: Br(15)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image(
                                      image: AssetImage(G_Paths()
                                          .imagePath("arrow-right.png")))
                                ]),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 7, left: 7, bottom: 7),
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: Br(15),
                            color: const Color(0xff343645)),
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                                alignment: Alignment.center,
                                child: txtWidget("Add / Manage Accounts", 16))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(children: [
            offerListItem(
                context,
                "Mobile Recharge Offer",
                "Use Code FIRST20",
                "Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply",
                0xff242042,
                "Group-1.png"),
            offerListItem(
                context,
                "DTH Recharge Offer",
                "Use Code FIRSDTHT20",
                "Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply",
                0xff3B2042,
                "Group-2.png"),
            offerListItem(
                context,
                "Flipcart Shopping Offer",
                "",
                "Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply",
                0xff422028,
                "Group-3.png"),
            offerListItem(
                context,
                "Money Transfer Offer",
                "",
                "Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply",
                0xff242042,
                "Group-4.png"),
            offerListItem(
                context,
                "Rs 50 Off on Flights",
                "",
                "Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply",
                0xff3B2042,
                "Group-5.png"),
          ]),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 15, right: 15, left: 15, bottom: 15),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 20, right: 20, left: 20, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: Br(20),
                        color: AppColors.card_bg,
                      ),
                      // height: ScreenWidth(.8, context),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Casbacks earned",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  ScreenWidth(.05, context),
                                              fontFamily: 'Spartan'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "\$507 ",
                                            style: TextStyle(
                                                color: AppColors.card_text_lg,
                                                fontSize:
                                                    ScreenWidth(.1, context),
                                                fontFamily: 'Spartan',
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Text(
                                          "+ 88 Rs  This month",
                                          style: TextStyle(
                                              color: const Color(0xffAAAAAA),
                                              fontSize:
                                                  ScreenWidth(.05, context),
                                              fontFamily: 'Spartan'),
                                        ),
                                      ],
                                    )),
                              ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 7, bottom: 7),
                            child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: Br(15),
                                  color: const Color(0xff343645)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: txtWidget(
                                          "Add / Manage Accounts", 20,
                                          colorHex: "FFEDF1"))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: ScreenWidth(0.5, context),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          "Scrathcards Won",
                          style: TextStyle(
                              fontFamily: 'spartan',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    homeButton2("Movies", "movies"),
                    homeButton2("Trains", "train"),
                    homeButton2("Bus", "bus"),
                    homeButton2("Flights", "airplane"),
                    homeButton2("Car", "car"),
                  ]),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: txtWidget("Collect Rewards", 20),
              ),
              offerListItem2(
                  context,
                  "Flat 50 off On food Delivery",
                  "",
                  "On orders above 99 on Swaggy, Somato",
                  0xff242042,
                  "Group-4.png"),
              offerListItem2(context, "20% Cashback On Amason", "",
                  "Up to Rs 150 Minimum Order 1000", 0xff422038, "Group-3.png"),
            ],
          ),
        ),
      ]),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: Br(10), color: Colors.indigo[800]),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, Routes.receive);
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          label: const Text("Recieve Money"),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
      ),
    );
  }
}
