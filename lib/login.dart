// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task1/routes.dart';
import 'package:task1/utils/global_colors/colors.dart';
import 'package:task1/utils/sizes/media_sizes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '+92';

    return Scaffold(
      body: Container(
        color: AppColors.bg,
        height: ScreenHeight(1, context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: ScreenWidth(1, context),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login_bg.png"),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: ScreenHeight(.05, context),
                        left: ScreenWidth(0.05, context),
                        right: ScreenWidth(0.1, context),
                      ),
                      child: Text("LOGIN WITH YOUR MOBILE PHONE NUMBER",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              decoration: TextDecoration.none,
                              fontSize: ScreenWidth(0.07, context),
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 150, bottom: 50),
                      child: Image(
                        image: AssetImage("assets/images/login_bg2.png"),
                        height: 250,
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenHeight(0.02, context),
                      left: ScreenWidth(0.07, context),
                      right: ScreenWidth(0.07, context),
                      bottom: ScreenHeight(0.01, context)),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(top: 0),
                        fillColor: AppColors.secondary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        filled: true,
                        hintText: "Enter Mobile Number",
                        hintStyle: TextStyle(
                          fontFamily: 'spartan',
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: AppColors.hintText,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, top: 5, bottom: 5),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(
                              Icons.ac_unit,
                              color: AppColors.secondary,
                            ),
                            elevation: 16,
                            style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['+92', '+1', '+91', '+35']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontFamily: 'spartan'),
                                ),
                              );
                            }).toList(),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x004D5DFA),
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.home);
                        },
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'spartan',
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        )),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Your personal details are safe with us ",
                        style: TextStyle(
                            color: AppColors.subText,
                            fontFamily: 'Nunito',
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Read our Privacy Policy and Terms and Conditions",
                        style: TextStyle(
                            color: AppColors.subText,
                            fontFamily: 'Nunito',
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
