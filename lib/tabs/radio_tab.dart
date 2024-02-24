import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/my_provioder.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
              style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(
            height: 40,
          ),
          Image.asset(provider.getRadioPlayeraPath()),
        ],
      ),
    );
  }
}
