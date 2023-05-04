import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';

//colorScheme
var kColorSheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorSheme = ColorScheme.fromSeed(
  brightness: Brightness.dark, //set, because by default this is set to light
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((fn){

  });
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorSheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorSheme.primaryContainer,
            foregroundColor: kDarkColorSheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        // lighTheme
        useMaterial3: true,
        //scaffoldBackgroundColor: const Color.fromARGB(255, 220, 189, 252),
        colorScheme: kColorSheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSheme.onPrimaryContainer,
          foregroundColor: kColorSheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kColorSheme.onSecondaryContainer,
                  fontSize: 14),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
