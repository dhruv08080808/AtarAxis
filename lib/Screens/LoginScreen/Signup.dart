import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:atar_axis/Screens/LoginScreen/OtpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constants/Colors.dart';
import '../../widgets/Container.dart';
import '../../widgets/ContainerWithBorder.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
SizedBox(height: 12),
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('Assets/Icons/rightttt.png')),
          SizedBox(height: 34),
          Text('SignUp',style: man_700_20_001314),
              SizedBox(height: 16),
              Text('Please enter your mobile number to continue.',style: man_400_16_626A),
              SizedBox(height: 40),
              Container(
                height: 70.h,
                width: 1.sw,
                child: TextFormField(
                  onChanged: (v) {
                    setState(() {

                    });
                  },
                  controller: phonecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                  ),
                ),
              ),
              SizedBox(height: 40),
              Button(height: 56.h, width: 1.sw, title: 'GENERATE OTP', txtstyle:
              phonecontroller.text.isEmpty?
              man_400_16_626A:man_500_16_ff, onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              }, color:
              phonecontroller.text.isEmpty ?
              kB5BABA:k006D77),
              SizedBox(height: 24),
              Center(child: Text('or',style: man_400_16_00)),
              SizedBox(height: 24),
              Buttonwithborder(height: 58.h, width: 1.sw, title: 'Continue with Google', txtstyle: man_500_16_62 , onTap: () {  }, color:Colors.transparent, img: 'Assets/Icons/GOOGLEEiCON.png', bordercolor: kB5BABA),
              SizedBox(height: 32),
              Row(
                children: [
                  Text('Already have an Account?',style: man_400_16_0013),
                  Text('Login',style: man_400_16_006D,)
                ],
              ),
        ]),
      ),
    );
  }
}
