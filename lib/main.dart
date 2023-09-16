import 'package:flutter/material.dart';

import 'Screens/DashBoad/Home/MainScreen.dart';
import 'Screens/LoginScreen/Login.dart';
import 'Screens/LoginScreen/Signup.dart';
import 'Screens/OnBoadingScreen/OnBoadingScreen1.dart';
import 'Screens/SplashScreen/SplashScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}


