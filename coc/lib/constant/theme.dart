import 'package:coc/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: primary,
        secondary: black,
      ),
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 5.0,
      horizontal: 10.0,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: grey,
        width: 1.0,
      ),
    ),
  ),
);
