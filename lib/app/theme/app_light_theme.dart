import 'package:flutter/material.dart';
import 'package:speed_test/app/extension/widget_scale_extension.dart';
import '../constants/app/padding_and_radius_size.dart';
import '../constants/assets/assets.dart';
import '../theme/colors.dart';

import 'init.dart';

class AppLightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;
  @override
  Color backgroundColor = AppColor.primary;
  @override
  Color scaffoldBackgroundColor = AppColor.lightSecondary;
  @override
  IconThemeData accentIconTheme = const IconThemeData(color: Colors.white);
  @override
  IconThemeData primaryIconTheme = const IconThemeData(color: Colors.white);
  @override
  IconThemeData iconTheme = const IconThemeData(color: Colors.black);
  @override
  Color shadowColor = Colors.black26;
  @override
  FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData(
          backgroundColor: AppColor.lightSecondary);

  @override
  ColorScheme colorScheme = const ColorScheme(
    primary: AppColor.primary,
    onPrimary: Colors.white,
    primaryContainer: AppColor.primaryContainer,
    secondary: AppColor.secondary,
    onSecondary: AppColor.darkText,
    secondaryContainer: AppColor.darkText,
    surface: Colors.white,
    onSurface: AppColor.darkText,
    background: AppColor.background,
    onBackground: AppColor.darkText,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  @override
  ColorScheme buttonColorScheme = const ColorScheme(
    primary: AppColor.primary,
    primaryContainer: AppColor.primaryContainer,
    secondary: AppColor.lightText,
    secondaryContainer: AppColor.primaryContainer,
    surface: Colors.white,
    background: AppColor.primary,
    error: Colors.red,
    onPrimary: AppColor.lightText,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  @override
  TextTheme textTheme = TextTheme(
    ///HeadLine
    displayLarge: TextStyle(
      fontSize: 12.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    displayMedium: TextStyle(
      fontSize: 13.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    displaySmall: TextStyle(
      fontSize: 18.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    headlineMedium: TextStyle(
      fontSize: 15.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    headlineSmall: TextStyle(
      fontSize: 20.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    titleLarge: TextStyle(
      fontSize: 26.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),

    ///BodyText
    bodyLarge: TextStyle(
      fontSize: 16.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: 10.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    titleMedium: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w500,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    titleSmall: TextStyle(
      fontSize: 8.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 11.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.secondary,
      fontFamily: fontFamily,
    ),
  );

  @override
  ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(AppColor.primary),
      fixedSize: MaterialStateProperty.all<Size>(
          Size(120.horizontalScale, 50.verticalScale)),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: AppColor.secondary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 14.horizontalScale,
        ),
      ),
    ),
  );

  @override
  InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    labelStyle: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w400,
      color: AppColor.darkText,
      fontFamily: fontFamily,
    ),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
      color: AppColor.paleTextColor,
      fontSize: 14.horizontalScale,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(
        radiusS,
      ),
    ),
  );

  @override
  TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: AppColor.primary,
    selectionColor: AppColor.primary.withOpacity(0.2),
    selectionHandleColor: AppColor.primary,
  );

  @override
  TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      foregroundColor: MaterialStateProperty.all<Color>(AppColor.primary),
      shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: AppColor.primary,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16.horizontalScale,
        ),
      ),
    ),
  );

  @override
  OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: AppColor.darkText)),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: AppColor.darkText,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 16.horizontalScale,
        ),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusXL),
        ),
      ),
    ),
  );

  @override
  CheckboxThemeData checkboxThemeData = CheckboxThemeData(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor: MaterialStateProperty.all<Color?>(AppColor.background),
    checkColor: MaterialStateProperty.all<Color?>(AppColor.secondary),
    side: const BorderSide(width: 0.7, color: AppColor.secondary),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusXXS),
    ),
  );

  @override
  RadioThemeData radioThemeData = RadioThemeData(
    fillColor: MaterialStateProperty.all<Color>(AppColor.primary),
  );

  @override
  AppBarTheme appBarTheme = const AppBarTheme();

  @override
  TabBarTheme tabBarTheme = TabBarTheme(
    labelColor: AppColor.primary,
    labelStyle: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w700,
      color: AppColor.primary,
      fontFamily: fontFamily,
    ),
    unselectedLabelColor: AppColor.darkText,
    unselectedLabelStyle: TextStyle(
      fontSize: 14.horizontalScale,
      fontWeight: FontWeight.w700,
      color: AppColor.darkText,
      fontFamily: fontFamily,
    ),
  );

  @override
  Color indicatorColor = AppColor.primary;

  @override
  BottomAppBarTheme bottomAppBarTheme = const BottomAppBarTheme(
    color: Colors.transparent,
    elevation: 0,
  );

  @override
  ChipThemeData chipTheme = const ChipThemeData(
    backgroundColor: AppColor.lightText,
  );
}
