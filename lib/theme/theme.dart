import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.dark(
        background: Color.fromARGB(255, 237, 228, 228),
        primary: Color.fromARGB(31, 238, 234, 234),
        secondary: Color.fromARGB(66, 226, 226, 226),
        inversePrimary: const Color.fromARGB(96, 171, 111, 111)));

ThemeData dark = ThemeData(
    colorScheme: ColorScheme.dark(
        background: Color.fromARGB(255, 28, 4, 4),
        primary: Color.fromARGB(31, 69, 65, 65),
        secondary: const Color.fromARGB(66, 100, 90, 90),
        inversePrimary: const Color.fromARGB(96, 171, 111, 111)));
