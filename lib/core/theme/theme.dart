import 'package:agendabarber/core/configuration/application_colors.dart';
import 'package:agendabarber/core/configuration/application_fonts.dart';
import 'package:flutter/material.dart';

abstract class CustomTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: ApplicationColors.primaryColor,
      primaryColorLight: ApplicationColors.surfaceColor,
      scaffoldBackgroundColor: ApplicationColors.backgroundColor,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ApplicationColors.primaryColor,
        onPrimary: ApplicationColors.onPrimaryColor,
        secondary: ApplicationColors.secondaryColor,
        onSecondary: ApplicationColors.onSecondaryColor,
        surface: ApplicationColors.surfaceColor,
        onSurface: ApplicationColors.onSurfaceColor,
        error: ApplicationColors.errorColor,
        onError: ApplicationColors.onErrorColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ApplicationColors.backgroundColor,
        titleTextStyle: TextStyle(
          color: ApplicationColors.onPrimaryColor,
        ),
      ),
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          fontSize: 12.0,
          color: ApplicationColors.onBackgroundColor,
          fontFamily: ApplicationFonts.Roboto,
          fontWeight: FontWeight.w400,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: ApplicationColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}