import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(255, 198, 231, 255), // Açık mavi
  "onPrimary": Color.fromARGB(255, 251, 251, 251), // Beyaza yakın
  "secondary": Color.fromARGB(255, 212, 246, 255), // Çok açık mavi
  "onSecondary": Color.fromARGB(255, 0, 0, 0), // Pastel turuncu
  "surface": Color.fromARGB(255, 251, 251, 251), // Beyaz
  "onSurface": Color.fromARGB(255, 150, 211, 254), // Açık mavi
  "success": Color.fromARGB(255, 198, 231, 255), // Açık mavi
  "error": Color.fromARGB(255, 211, 47, 47), // Kırmızı
  "onError": Color.fromARGB(255, 255, 255, 255), // Beyaz
};
const darkColors = {
  "primary": Color.fromARGB(255, 43, 75, 102), // Koyu mavi
  "onPrimary": Color.fromARGB(255, 42, 42, 42), // Koyu gri
  "secondary": Color.fromARGB(255, 45, 87, 102), // Koyu deniz mavisi
  "onSecondary": Color.fromARGB(255, 153, 89, 15), // Koyu turuncu
  "surface": Color.fromARGB(255, 18, 18, 18), // Koyu tema yüzey rengi
  "onSurface": Color.fromARGB(255, 43, 75, 102), // Koyu mavi
  "success": Color.fromARGB(255, 43, 75, 102), // Koyu mavi
  "error": Color.fromARGB(255, 155, 27, 27), // Koyu kırmızı
  "onError": Color.fromARGB(255, 224, 224, 224), // Açık gri
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: colors["primary"]!,
    onPrimary: colors["onPrimary"]!,
    secondary: colors["secondary"]!,
    onSecondary: colors["onSecondary"]!,
    error: colors["error"]!,
    onError: colors["onError"]!,
    surface: colors["surface"]!,
    onSurface: colors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
);
