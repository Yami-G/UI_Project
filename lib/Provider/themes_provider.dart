import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themesProvider = StateNotifierProvider((ref) => ThemesData());

class ThemesData extends StateNotifier<ThemeData> {
  ThemesData()
      : super(ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,
        ));

  lightMode() {
    return state = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
    );
  }

  darkMode() {
    return state = ThemeData.dark();
  }
}
