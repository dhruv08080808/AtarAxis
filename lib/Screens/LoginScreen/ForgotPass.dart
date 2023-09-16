import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../Constants/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/Container.dart';
class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
   final GlobalKey<FormState> _formm=GlobalKey<FormState>();
  bool _obscureText = true;
  bool _hidetext=true;

  void _hideee(){
    setState(() {
      _hidetext=!_hidetext;
    });
  }
  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  var passcontroller= TextEditingController();
  var confirmpasscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
        child: Form(
          key: _formm,
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
            Text('Create Password',style: man_700_20_001314),
            SizedBox(height: 16),
            Text('Enter New Password for \n 9810745330',style: man_400_14_626A),
            SizedBox(height: 40),
              Text('Password',style: man_400_14_626A),
              Container(
                height: 48.h,
                width: 1.sw,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    // Perform custom password validation here
                    if (value.length < 8) {
                      return "Password must be at least 8 characters long";
                    }
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Password must contain at least one uppercase letter";
                    }
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return "Password must contain at least one lowercase letter";
                    }
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Password must contain at least one numeric character";
                    }
                    if (!value.contains(RegExp(r'[!@#\$%^&*()<>?/|}{~:]'))) {
                      return "Password must contain at least one special character";
                    }

                    return null; // Password is valid.
                  },
                  controller: confirmpasscontroller,
                  obscureText: _obscureText,

                  onChanged: (val) {
                    setState(() {

                    });
                  },
                  decoration: InputDecoration(

                    hintText: 'xxxxxxx',
                    hintStyle: man_400_16_0013,
                    suffixIcon: InkWell(
                      onTap: _toggle,
                      child:    Image(image: AssetImage(
                          _obscureText  ?'Assets/Icons/hidepass.png':
                          'Assets/Icons/showpass.png')),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 40),
              Text('Confirm Password',style: man_400_14_626A),
              Container(
                height: 48.h,
                width: 1.sw,
                child: TextFormField(
                  validator: (value) {
                 if(value!.isEmpty){
                   return 'Please Enter a Valid Password ';
                 }
                 if(value!= passcontroller.text) {
                   return 'Passwords don’t match!';
                 }else {
                   return null;
                 }
                  },
                  controller: passcontroller,
                  obscureText: _hidetext,

                  onChanged: (val) {
                    setState(() {

                    });
                  },
                  decoration: InputDecoration(

                    hintText: 'xxxxxxx',
                    hintStyle: man_400_16_0013,
                    suffixIcon: InkWell(
                      onTap: _hideee,
                      child:    Image(image: AssetImage(
                          _hidetext  ?'Assets/Icons/hidepass.png':
                          'Assets/Icons/showpass.png')),
                    ),
                  ),
                ),

              ),
              Spacer(),
              Button(height: 56.h, width: 1.sw, title: 'SIGNUP', txtstyle:
              passcontroller.text.isEmpty || confirmpasscontroller.text.isEmpty ?
              man_400_16_626A:man_500_16_ff, onTap: () {
                _formm.currentState?.validate();
              }, color:
              passcontroller.text.isEmpty || confirmpasscontroller.text.isEmpty ?
              kB5BABA:k006D77),
          ],),
        ),
      ),
    );
  }
}
