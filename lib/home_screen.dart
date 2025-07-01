 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/presentation/tabs/ahadeth_tab.dart';
import 'package:islami_app/presentation/tabs/quran_tab.dart';
import 'package:islami_app/presentation/tabs/radio_tab.dart';
import 'package:islami_app/presentation/tabs/sebha_tab.dart';
import 'package:islami_app/presentation/tabs/setting_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/providers/my_provioder.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            provider.getBackgroundPath(),
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.app_name,
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          iconSize: 40,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radioo.png")),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: AppLocalizations.of(context)!.ahadeth),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting),
          ],
        ),
        body: tabs[index],
      ),
    );
  }
}

List<Widget> tabs = [
  QuranTab(),
  SebhaTab(),
  RadioTab(),
  AhadethTab(),
  SettingTab(),
];
