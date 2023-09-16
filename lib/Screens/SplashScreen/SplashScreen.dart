import 'package:atar_axis/Constants/Colors.dart';
import 'package:atar_axis/Screens/LoginScreen/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/TextStyle.dart';
import '../../widgets/Container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kEDF6F9,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             SizedBox(height: 100),
            Text('Book an instant appointment with the right Psychologists',style: man_700_20_001314, maxLines: 2),
            SizedBox(height: 40),
            Image.asset('Assets/Images/SplashScreen Image.png',),
            SizedBox(height: 145),
            Button(height: 56.h, width: 1.sw, title: 'I am seeking help', txtstyle: man_500_16_ff, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            }, color:k006D77),
            SizedBox(height: 26),
            Button(height: 56.h, width: 1.sw, title: 'I am a psychologist', txtstyle: man_500_16_006D, onTap: () {}, color:kFFFFFF),
            SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
