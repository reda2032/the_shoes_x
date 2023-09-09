import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_shoes_x/core/resources/app_theme.dart';
import 'package:the_shoes_x/features/splash/splash_screen.dart';
import 'package:the_shoes_x/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Shoes X',
        theme: getApplicationTheme(),
        // onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.splashRoute,
        home: const SplashScreen(),
      ),
    );
  }
}
