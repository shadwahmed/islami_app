import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingTab extends StatelessWidget {
  SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Language",
              style: GoogleFonts.alike(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffB7935F)),
              ),
              child: Text(
                "  Arabic",
                style: GoogleFonts.alike(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Theme",
              style: GoogleFonts.alike(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffB7935F)),
              ),
              child: Text(
                "  Light",
                style: GoogleFonts.alike(
                  fontWeight: FontWeight.w300,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
