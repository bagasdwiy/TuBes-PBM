import 'package:flutter/material.dart';

class ThemProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.light;

  void toggleThem(bool isOne) {
    themeMode = isOne ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Mytheme {
  static final darkthem = ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 91, 15, 189),
      appBarTheme:
          const AppBarTheme(backgroundColor: Color.fromARGB(255, 91, 15, 189)),
      primaryColor: Colors.white,
      cardColor: const Color(0xff0A155A),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFF00FF)));

  static final lightthem = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF4F6FD),
    primaryColor: Colors.black,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Color(0xFF002FFF)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );
}
