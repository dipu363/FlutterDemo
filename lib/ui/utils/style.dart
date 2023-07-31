import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

import 'dart:ui';

TextStyle titleTextStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: 'SFProDisplay',
    color: blackColor,
    letterSpacing: 0.5);
TextStyle heading1 = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    fontFamily: 'SFProDisplay',
    color: neutralBlack900,
    letterSpacing: 1);
TextStyle heading2 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'SFProDisplay',
    color: neutralBlack400,
    letterSpacing: 0.5);
TextStyle editingTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'SFProDisplay',
    color: neutralBlack900,
    letterSpacing: 0.1);
TextStyle subtitleTextStyle =
    const TextStyle(fontSize: 16, color: grayColor, letterSpacing: 0.5);

TextFormField editTextfield = TextFormField(
  decoration: const InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2))),
);



