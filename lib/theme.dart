import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData.light();
ThemeData dark = ThemeData.dark();


class ThemeNotifier extends ChangeNotifier{
  final String key = "theme";
SharedPreferences _prefs;
bool _darkTheme;

bool get darkTheme => _darkTheme;

ThemeNotifier(){
  _darkTheme = true;
  _loadFromPrefs();
}


toggleTheme(){
  _darkTheme =! _darkTheme;
  _saveToPrefs();
  notifyListeners();
}

  _loadFromPrefs() async{
    await _initPrefs();
    _darkTheme = _prefs.getBool(key) ?? false;
    notifyListeners();
  }

  _saveToPrefs()async {
    await _initPrefs();
    _prefs.setBool(key, _darkTheme);
  }

  _initPrefs() async {
    if(_prefs ==null)
      _prefs = await SharedPreferences.getInstance();
  }

}



