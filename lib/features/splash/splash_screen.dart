import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_shoes_x/core/resources/app_assets.dart';
import 'package:the_shoes_x/core/resources/app_color.dart';
import 'package:the_shoes_x/core/resources/app_font.dart';
import 'package:the_shoes_x/core/resources/app_strings.dart';
import 'package:the_shoes_x/core/resources/app_values.dart';
import 'package:the_shoes_x/core/widgets/custom_text.dart';
import 'package:the_shoes_x/features/onboarding/signUp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primary,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeBoxValue.sizeBoxValue_300),
              //  splashLogo
              SvgPicture.asset(
                AppImageAssets.splashLogo,
                height: AppSize.s80,
                width: AppSize.s80,
              ),
              SizedBox(height: SizeBoxValue.sizeBoxValue_24),
              //  ShoesX  text
              CustomText(
                text: AppStrings.shoesX,
                fontSize: AppFontSize.s41,
              ),
              SizedBox(height: SizeBoxValue.sizeBoxValue_30),
              // Passion for shoes  text
              CustomText(
                text: AppStrings.passionForShoes,
                letterSpacing: IntValue.letterSpacing,
                fontSize: AppFontSize.s13,
                height: DoubleValue.textHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  startDelay() {
    timer = Timer(const Duration(seconds: DurationConstant.d3), goNext);
  }

  goNext() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUp()),
    );
    // navigate to main screen
    // Navigator.pushReplacementNamed(context, MaterialPageRoute(builder: (context) => const SecondRoute(),);
  }
}
