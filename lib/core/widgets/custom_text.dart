import 'package:flutter/material.dart';
import 'package:the_shoes_x/core/resources/app_font.dart';
import 'package:the_shoes_x/core/resources/app_values.dart';

class CustomText extends StatelessWidget {
  String text;
  final int maxLines;
  final TextAlign textAlign;
  final bool softWrap;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color fontColor;
  final double letterSpacing;
  final double height;

  CustomText({
    super.key,
    required this.text,
    this.maxLines = IntValue.maxLinesValue,
    this.textAlign = TextAlign.center,
    this.softWrap = true,
    this.fontSize = 13,
    this.fontWeight = AppFontWeight.regular,
    this.fontFamily = 'Raleway',
    this.fontColor = const Color(0xffFFFFFF),
    this.letterSpacing = 1,
    this.height = 0.10,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: fontColor,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
