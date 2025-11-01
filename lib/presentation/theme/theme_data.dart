import 'package:flutter/material.dart';
import 'package:moviez_app/presentation/theme/base_colors.dart';

final appThemeData = ThemeData(
  scaffoldBackgroundColor: BaseColors.white,
  primaryColor: BaseColors.primaryColor,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: BaseColors.black),
    foregroundColor: BaseColors.transparent,
    backgroundColor: BaseColors.transparent,
    surfaceTintColor: BaseColors.transparent,
    elevation: 0.0,
    centerTitle: false,
  ),
  elevatedButtonTheme: _elevatedButtonTheme(),
  outlinedButtonTheme: _outlinedButtonTheme(),
  textSelectionTheme: _textSelectionThemeData(),
  tabBarTheme: const TabBarThemeData(
    indicatorColor: BaseColors.primaryColor,
    labelColor: BaseColors.primaryColor,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: BaseColors.primaryColor,
  ),
);

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      backgroundColor: BaseColors.primaryBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: BaseColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}

TextSelectionThemeData _textSelectionThemeData() {
  return const TextSelectionThemeData(
    cursorColor: BaseColors.primaryColor,
    selectionHandleColor: BaseColors.primaryColor,
  );
}
