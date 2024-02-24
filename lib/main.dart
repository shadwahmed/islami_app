
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/ahadeth_details.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/my_provioder.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>
    ( create: (context)=> MyProvider(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      locale: Locale("${provider.languageCode}"),
      routes: {
        SplashScreen.routeName: (context)=> SplashScreen(),
        HomeScreen.routeName: (context)=> HomeScreen(),
        SuraDetails.routeName: (context)=> SuraDetails(),
        AhadethDetails.routeName:(context)=>AhadethDetails(),
      },
    );
  }
}
