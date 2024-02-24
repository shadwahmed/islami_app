import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';
import '../providers/my_provioder.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;

  String tasbehaName = 'سبحان الله';

  List<String> tasbehaList = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  int index = 0;

  tasbeha() {
    if (count <= 30) {
      count++;
    }
    if (count > 30) {
      index++;
      tasbehaName = tasbehaList[index];
      count = 0;
    }
    if (index == 2 && count == 30) {
      index = 0;
      tasbehaName = tasbehaList[index];
      count = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 190),
                  child: Image.asset(provider.getHeadSebhaPath())),
              Container(
                  padding: EdgeInsets.only(left: 82, top: 80),
                  child: InkWell(
                      onTap: () {
                        tasbeha();
                        setState(() {});
                      },
                      child: Image.asset(provider.getBodySebhaPath()))),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 70),
            child: Text("عدد التسبيحات",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Container(
              height: 81,
              width: 75,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: provider.themeMode == ThemeMode.light
                          ? Theme.of(context).primaryColor.withOpacity(0.57)
                          : MyThemeData.darkBackGround,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: Text(
                    "$count",
                    style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: provider.themeMode == ThemeMode.light
                            ? MyThemeData.lightBlack
                            : MyThemeData.darkWhite),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Container(
              height: 51,
              width: 160,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColorDark,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: Text(
                    "$tasbehaName",
                    style: GoogleFonts.inter(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: provider.themeMode == ThemeMode.light
                          ? MyThemeData.darkWhite
                          : MyThemeData.lightBlack,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
