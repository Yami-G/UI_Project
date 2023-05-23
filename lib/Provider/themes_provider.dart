import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themesProvider = StateNotifierProvider<ThemesData, ThemeData>((ref) => ThemesData());

class ThemesData extends StateNotifier<ThemeData> {
  ThemesData()
      : super(ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,
        ));

  lightMode() {
    state = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white, //sets the secondary color theme
      secondaryHeaderColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.indigo),
        headline2: TextStyle(color: Colors.black),
      ),
    );
  }

  darkMode() {
    state = ThemeData.dark();
  }
}
