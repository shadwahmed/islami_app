import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/my_provioder.dart';

class LanguageBottoumSheet extends StatelessWidget {
  const LanguageBottoumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: Text(
                " Arabic",
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: provider.languageCode =='ar'&& provider.themeMode==ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Colors.blueAccent,
                ),
              ),
            ),
            if (provider.languageCode =='ar'&& provider.themeMode==ThemeMode.light) ...[
              Icon(
                Icons.done,
                color: Theme.of(context).primaryColor,
                size: 35,
              )
            ]
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: Text(
                " English",
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: provider.languageCode == 'en'&& provider.themeMode==ThemeMode.dark
                      ? Theme.of(context).primaryColorDark
                      : Colors.red,
                ),
              ),
            ),
            if (provider.languageCode =='en'&& provider.themeMode==ThemeMode.dark) ...[
              Icon(
                Icons.done,
                color: Theme.of(context).primaryColorDark,
                size: 35,
              )
            ]
          ],
        ),
      ],
    );
  }
}
