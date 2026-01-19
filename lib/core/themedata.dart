import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';

abstract class Themedata {
  static final ThemeData light =ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManger.black,
        titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorManger.gold
        ),
        centerTitle: true,

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManger.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorManger.white,
        unselectedItemColor: ColorManger.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      )
  );
}