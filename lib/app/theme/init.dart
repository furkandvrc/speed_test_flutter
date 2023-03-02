import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTheme {
  late final Brightness brightness;
  late final Color backgroundColor;
  late final Color scaffoldBackgroundColor;
  late final Color shadowColor;
  late final IconThemeData accentIconTheme;
  late final IconThemeData primaryIconTheme;
  late final IconThemeData iconTheme;
  late final ColorScheme colorScheme;
  late final ColorScheme buttonColorScheme;
  late final TextTheme textTheme;
  late final ElevatedButtonThemeData elevatedButtonTheme;
  late final InputDecorationTheme inputDecorationTheme;
  late final TextSelectionThemeData textSelectionThemeData;
  late final TextButtonThemeData textButtonThemeData;
  late final OutlinedButtonThemeData outlinedButtonThemeData;
  late final CheckboxThemeData checkboxThemeData;
  late final RadioThemeData radioThemeData;
  late final AppBarTheme appBarTheme;
  late final TabBarTheme tabBarTheme;
  late final Color indicatorColor;
  late final BottomAppBarTheme bottomAppBarTheme;
  late final ChipThemeData chipTheme;
  late final FloatingActionButtonThemeData floatingActionButtonThemeData;
}

ThemeData getTheme<T extends AppTheme>(T theme) => ThemeData(
      primaryColorDark: AppColor.primary,
      primaryColorLight: AppColor.primary,
      colorScheme: theme.colorScheme,
      scaffoldBackgroundColor: theme.scaffoldBackgroundColor,
    

      textTheme: theme.textTheme,
      appBarTheme: theme.appBarTheme,
      iconTheme: theme.iconTheme,
      brightness: theme.brightness,
      elevatedButtonTheme: theme.elevatedButtonTheme,
      textSelectionTheme: theme.textSelectionThemeData,
      inputDecorationTheme: theme.inputDecorationTheme,
      primaryIconTheme: theme.primaryIconTheme,
      textButtonTheme: theme.textButtonThemeData,
      floatingActionButtonTheme: theme.floatingActionButtonThemeData,

      outlinedButtonTheme: theme.outlinedButtonThemeData,
      checkboxTheme: theme.checkboxThemeData,
      buttonTheme: ButtonThemeData(
        colorScheme: theme.buttonColorScheme,
      ),
      radioTheme: theme.radioThemeData,
      tabBarTheme: theme.tabBarTheme,
      indicatorColor: theme.indicatorColor,
      bottomAppBarTheme: theme.bottomAppBarTheme,
      chipTheme: theme.chipTheme,
   
    );
