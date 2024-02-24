import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/Theme_bottom_sheet.dart';
import '../bottom_sheets/language_bottom_sheet.dart';
import '../my_theme.dart';
import '../providers/my_provioder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingTab extends StatelessWidget {
  SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
                AppLocalizations.of(context)!.langauge,
              style: GoogleFonts.alike(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: provider.themeMode == ThemeMode.light
                      ? MyThemeData.lightBlack
                      : MyThemeData.darkWhite),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageBottoumSheet();
                  });
            },
            child: Center(
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color:provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark),
                ),
                child: Text(
                  "  Arabic",
                  style: GoogleFonts.alike(
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                      color: provider.themeMode == ThemeMode.light
                          ? MyThemeData.lightBlack
                          : MyThemeData.darkWhite),
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
              AppLocalizations.of(context)!.theme,
              style: GoogleFonts.alike(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                  color: provider.themeMode == ThemeMode.light
                      ? MyThemeData.lightBlack
                      : MyThemeData.darkWhite
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ThemeBottoumSheet();
                  });
            },
            child: Center(
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColorDark),
                ),
                child: Text(
                  "  Light",
                  style: GoogleFonts.alike(
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                      color: provider.themeMode == ThemeMode.light
                          ? MyThemeData.lightBlack
                          : MyThemeData.darkWhite
                  ),
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
