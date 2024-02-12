import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Image.asset("assets/images/main_ic_radio.png"),
          ),
          SizedBox(
            height: 55,
          ),
          Text("إذاعة القرآن الكريم",
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/radio_pause.png"),
        ],
      ),
    );
  }
}
