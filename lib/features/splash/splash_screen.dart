import 'package:flutter/material.dart';
import 'package:the_shoes_x/core/resources/app_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primary,
      ),
    );
  }
}
