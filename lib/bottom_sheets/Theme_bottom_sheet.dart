import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/my_provioder.dart';

class ThemeBottoumSheet extends StatelessWidget {
  const ThemeBottoumSheet({super.key});



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
                provider.changeTheme(ThemeMode.light);
              },
              child: Text(
                " Light",
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).primaryColor
                      : Colors.red,
                ),
              ),
            ),
            if (provider.themeMode == ThemeMode.light) ...[
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
                provider.changeTheme(ThemeMode.dark);
              },
              child: Text(
                " Dark",
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: provider.themeMode == ThemeMode.dark
                      ? Theme.of(context).primaryColorDark
                      : Color(0xff21130d),
                ),
              ),
            ),
            if (provider.themeMode == ThemeMode.dark) ...[
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
