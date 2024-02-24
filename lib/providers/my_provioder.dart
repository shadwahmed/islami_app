import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  void changeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }

  ThemeMode themeMode = ThemeMode.light;
  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }


  String getBackgroundPath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/home-background.png");
    } else {
      return ("assets/images/dark_bg.png");
    }
  }

  String getBodySebhaPath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/body_of_seb7a_light.png");
    } else {
      return ("assets/images/body_of_seb7a_dark.png");
    }
  }

  String getHeadSebhaPath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/head_of_seb7a_light.png");
    } else {
      return ("assets/images/head_of_seb7a_dark.png");
    }
  }

  String getRadioPlayeraPath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/radio_pause_light.png");
    } else {
      return ("assets/images/radio_pause_dark.png");
    }
  }

  String getSplashIconPath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/ic_splash.png");
    } else {
      return ("assets/images/logo.png");
    }
  }

  String getSplashIcRoutePath() {
    if (themeMode == ThemeMode.light) {
      return ("assets/images/ic_route.png");
    } else {
      return ("assets/images/routeyellow.png");
    }
  }

}
