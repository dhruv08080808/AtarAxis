import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:atar_axis/Screens/LoginScreen/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Constants/Colors.dart';
import '../../widgets/Container.dart';

class OtpScreenEmail extends StatefulWidget {
  const OtpScreenEmail({super.key});

  @override
  State<OtpScreenEmail> createState() => _OtpScreenEmailState();
}

class _OtpScreenEmailState extends State<OtpScreenEmail> {
  TextEditingController otp1=TextEditingController();
  TextEditingController otp2=TextEditingController();
  TextEditingController otp3=TextEditingController();
  TextEditingController otp4=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('Assets/Icons/rightttt.png')),
            SizedBox(height: 52),
            Text('Enter OTP',style: man_700_20_001314),
            SizedBox(height: 16),
            Text('Please enter the OPT sent to \n xyz112233@gmail.com',style: man_400_14_626A),
            SizedBox(height: 40),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 68,width: 64,child: TextField(
                    onChanged: (val){
                      if(val.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: otp1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),

                  ),
                  SizedBox(height: 68,width: 64,child: TextField(
                    onChanged: (val){
                      if(val.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: otp2,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),

                  ),
                  SizedBox(height: 68,width: 64,child: TextField(
                    onChanged: (val){
                      if(val.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: otp3,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),

                  ),
                  SizedBox(height: 68,width: 64,child: TextField(
                    onChanged: (val){
                      if(val.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    controller: otp4,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),

                  ),
                ]),

            Row(
              children: [
                Text('Didn’t receive the code?',style: man_400_12_626A),
                SizedBox(width: 4),
                Text('Resend',style: man_400_12_006D,)
              ],
            ),
            Spacer(),
            Button(height: 56.h, width: 1.sw, title: 'Continue', txtstyle:
            otp1.text.isEmpty || otp2.text.isEmpty || otp3.text.isEmpty || otp4.text.isEmpty?
            man_400_16_626A:man_500_16_ff, onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );


            }, color:
            otp1.text.isEmpty || otp2.text.isEmpty || otp3.text.isEmpty || otp4.text.isEmpty?
            kB5BABA:k006D77),



          ],),
      ),
    );
  }
}
