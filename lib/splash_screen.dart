import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provioder.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'my_theme.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  static const String routeName = "splash screen";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    Timer(Duration(seconds: 4),
        () => Navigator.pushNamed(context, '${HomeScreen()}'));
    return Scaffold(
      body: Container(
        color: provider.themeMode == ThemeMode.light
            ? Colors.white
            : MyThemeData.darkBackGround,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 250),
            child: Image.asset(
              provider.getSplashIconPath(),
              width: 262,
              height: 262,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 93),
                alignment: Alignment.center,
                child: Image.asset(
                  provider.getSplashIcRoutePath(),
                  width: 139,
                  height: 139,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 195),
                alignment: Alignment.center,
                child: Text(
                  "Supervised by Mohamed Nabil",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: provider.themeMode == ThemeMode.light
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
