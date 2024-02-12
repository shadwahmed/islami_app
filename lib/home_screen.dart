import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/setting_tab.dart';

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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/home-background.png",
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
            "إسلامي",
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels:true,
          showUnselectedLabels: false,
          iconSize: 40,
          currentIndex: index,
          onTap: (value){
            index=value;
            setState(() {
            });
          },
          unselectedItemColor: Colors.white,
          selectedItemColor:Colors.black87,
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