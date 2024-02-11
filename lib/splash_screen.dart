import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  static const String routeName = "splash screen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4),()=>Navigator.pushNamed(context,'${HomeScreen()}'));
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 250),
            child: Image.asset(
              "assets/images/ic_splash.png",
              width: 262,
              height: 262,
            ),
          ),
          SizedBox(height: 30,),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 93),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/ic_route.png",
                  width: 139,
                  height: 139,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 195),
                alignment: Alignment.center,
                child: Text("Supervised by Mohamed Nabil",style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffB7935F),
                ),),
              )
            ],
          ),
        ]
      ),
    );
  }
}
