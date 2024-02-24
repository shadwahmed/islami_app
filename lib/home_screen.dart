import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provioder.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/setting_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

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
          onTap: (value){
            index=value;
            setState(() {
            });
          },

          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "القرأن",),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "التسبيح"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radioo.png")),label: "الراديو"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "الاحاديث"),
            BottomNavigationBarItem(
                icon:Icon(Icons.settings),label: "الاعدادات" ),
          ],
        ),
        body: tabs[index],
      ),
    );
  }
}
List<Widget>tabs=[
  QuranTab(),
  SebhaTab(),
  RadioTab(),
  AhadethTab(),
  SettingTab(),
];