import 'package:flutter/material.dart';
import 'package:the_shoes_x/core/resources/app_font.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
  double height,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
    height: height,
  );
}

// getTitle 41

TextStyle getTitle_41({
  double fontSize = AppFontSize.s41,
  required Color color,
  String fontFamily = 'Raleway',
  required FontWeight fontWeight,
  required double height,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    AppFontWeight.regular,
    color,
    height,
  );
}
