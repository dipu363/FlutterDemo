
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

class MyInputTheme{
  TextStyle _buildTextStyle(Color color ,{double size = 16.0}){
    return TextStyle(
      fontSize: 16,
      fontFamily: 'SFProDisplay',
      color: color,

    );

  }
  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: color, width: 1));
  }
  InputDecorationTheme theme() => InputDecorationTheme(
    contentPadding: const EdgeInsets.all(16), // if use content padding then ignore isDense
    // isDense: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,


    //border
    enabledBorder: _buildBorder(neutralBlack400),
    errorBorder: _buildBorder(danger500),
    focusedBorder: _buildBorder(dreamBlue),
    focusedErrorBorder: _buildBorder(dreamBlue),
    disabledBorder: _buildBorder(neutralBlack300),
    // text style
    suffixStyle:_buildTextStyle(neutralBlack900),
    counterStyle:_buildTextStyle(neutralBlack500),
    floatingLabelStyle:_buildTextStyle(neutralBlack900),
    errorStyle:_buildTextStyle(danger500),
    helperStyle:_buildTextStyle(neutralBlack500),
    hintStyle:_buildTextStyle(neutralBlack400),
    labelStyle:_buildTextStyle(neutralBlack500),
    prefixStyle:_buildTextStyle(neutralBlack900),
  );
}