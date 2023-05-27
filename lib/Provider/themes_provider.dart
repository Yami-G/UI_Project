import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Shared/Service/shared_storage.dart';

final themesProvider = StateNotifierProvider<ThemesData, ThemeData>((ref) => ThemesData());

class ThemesData extends StateNotifier<ThemeData> {
  ThemesData()
      : super(SharedStorage.localStorage.containsKey('themeModeValue')
            ? SharedStorage().getData(dataType: DataType.bool, key: 'themeModeValue')
                ? ThemeData(
                    scaffoldBackgroundColor: Colors.white,
                    primaryColor: Colors.white,
                  )
                : ThemeData.dark()
            : ThemeData(
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
