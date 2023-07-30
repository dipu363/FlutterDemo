import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

import 'dart:ui';


TextStyle titleTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: blackColor,
    letterSpacing: 0.5);
TextStyle subtitleTextStyle =
    const TextStyle(fontSize:16,color: grayColor, letterSpacing: 0.5);

TextFormField editTextfield = TextFormField(
  decoration: const InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2))),
);
