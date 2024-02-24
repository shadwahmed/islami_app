import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/providers/my_provioder.dart';
import 'package:provider/provider.dart';

import 'my_theme.dart';

class AhadethDetails extends StatelessWidget {
  const AhadethDetails({super.key});
  static const String routeName='ahadethDetails';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var ahadethDetails = ModalRoute.of(context)!.settings.arguments as HadethModel;

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
            ahadethDetails.topic,
            style: GoogleFonts.elMessiri(
              color: provider.themeMode == ThemeMode.light
                  ? MyThemeData.lightBlack
                  : MyThemeData.darkWhite,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Card(
          color: provider.themeMode == ThemeMode.light
              ? Colors.white
              : MyThemeData.darkBackGround,
          margin: EdgeInsets.only(top: 80, bottom: 80, right: 29, left: 29),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent)
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  ahadethDetails.content[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color:provider.themeMode == ThemeMode.light
                          ? MyThemeData.lightBlack
                          : Theme.of(context).primaryColorDark
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 6,
              ),
              itemCount: ahadethDetails.content.length),
        ),
      ),
    );
  }
}
