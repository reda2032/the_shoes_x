import 'package:flutter/material.dart';
import 'package:the_shoes_x/core/resources/app_color.dart';
import 'package:the_shoes_x/core/resources/app_font.dart';
import 'package:the_shoes_x/core/resources/app_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primary,
        body: Text(
          'ShoesX',
          style: getTitle_41(
            height: 2.0,
            color: AppColor.white,
            fontWeight: AppFontWeight.regular,
          ),
        ),
      ),
    );
  }
}
