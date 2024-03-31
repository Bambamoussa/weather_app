import 'package:flutter/material.dart';
import 'package:weather/core/styles/weather_colors.dart';
import 'package:weather/core/styles/weather_text_style.dart';

final ThemeData weatherTheme = ThemeData(
  dividerColor: WeatherColors.neutralN30,
  scaffoldBackgroundColor: WeatherColors.backgroundBgPrimary,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    // Blanc de fond (Bouton, Container,...)
    primary: WeatherColors.neutralN40,

    onPrimary: WeatherColors.neutralN50,
    primaryContainer: WeatherColors.infoIN50,
    onPrimaryContainer: WeatherColors.infoIN100,

    inversePrimary: WeatherColors.secondaryC100,
    // Violet Illicado
    secondary: WeatherColors.secondaryC300,
    // Seconde couleur, utiliser pour les textes
    onSecondary: WeatherColors.txtCloudPrimary,
    secondaryContainer: WeatherColors.primaryA75,
    onSecondaryContainer: WeatherColors.neutralN600,
    // Rose Jambon Illicado
    tertiary: WeatherColors.tertiaryB200,
    tertiaryContainer: WeatherColors.neutralN200,
    onTertiaryContainer: WeatherColors.neutralN40,
    // Rose des boutons et formes
    onTertiary: WeatherColors.primaryM300,
    // Texte d'erreur
    error: WeatherColors.errorD300,
    onError: WeatherColors.errorD300,
    // Container d'erreur
    errorContainer: WeatherColors.neutralN30,
    onErrorContainer: WeatherColors.neutralN10,
    // Couleur de fond de l'application
    background: WeatherColors.neutralN10,
    // couleur succes et active
    inverseSurface: WeatherColors.successSU300,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
    surfaceTint: WeatherColors.neutralN800,
    shadow: WeatherColors.shadow,
    outline: WeatherColors.neutralN30,
  ),
  textTheme: TextTheme(
    // H1
    titleLarge: WeatherTextStyle.titleLarge700,
    // H2
    titleMedium: WeatherTextStyle.titleMedium400,
    // H3
    titleSmall: WeatherTextStyle.titleSmall400,
    // ParagraphLarge
    bodyLarge: WeatherTextStyle.paragraphLarge400,
    // ParagraphMedium
    bodyMedium: WeatherTextStyle.paragraphMedium400,
    // ParagraphSmall
    bodySmall: WeatherTextStyle.paragraphSmall400,
    // ParagraphXSmall
    labelSmall: WeatherTextStyle.paragraphXSmall400,
  ),
  // Elevetated Button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      padding: MaterialStateProperty.all(
        EdgeInsets.zero,
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(WeatherColors.primaryM300),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      visualDensity: const VisualDensity(
        horizontal: -4,
        vertical: -4,
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(
        EdgeInsets.zero,
      ),
      visualDensity: const VisualDensity(
        horizontal: 0,
        vertical: 0,
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(
          width: 1,
          color: WeatherColors.borderGrey100,
        ),
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 10,
    shadowColor: WeatherColors.neutralN700,
    toolbarHeight: 70,
    backgroundColor: WeatherColors.successSU500,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(24),
      ),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: WeatherColors.successSU500,
  ),
);
