import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provioder.dart';
import 'package:islami_app/sura_model.dart';
import 'package:provider/provider.dart';

import 'my_theme.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  List<String> verses = [];

  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(suraModel.index);
    }
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
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            suraModel.suraName,
            style: GoogleFonts.elMessiri(
              color: provider.themeMode == ThemeMode.light
                  ? MyThemeData.lightBlack
                  : MyThemeData.darkWhite,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Card(
          margin: EdgeInsets.only(top: 80, bottom: 80, right: 29, left: 29),
          color: provider.themeMode == ThemeMode.light
             ? Colors.white
             : MyThemeData.darkBackGround,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  verses[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: provider.themeMode == ThemeMode.light
                          ? MyThemeData.lightBlack
                          : Theme.of(context).primaryColorDark,),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 6,
                  ),
              itemCount: verses.length),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    print(lines);
    setState(() {});
  }
}
