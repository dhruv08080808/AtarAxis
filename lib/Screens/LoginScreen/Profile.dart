import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Constants/Colors.dart';
import '../../widgets/Container.dart';
import 'OtpScreenEmail.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController fullnamecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmpasswordcontroller=TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _togglee(){
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
        child: Form(
          key: _form,
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
              Text('Almost there',style: man_700_20_001314),
              SizedBox(height: 16),
              Text('Please enter below detailes to complete your profile.',style: man_400_14_626A),
              SizedBox(height: 40),
              Container(
                height: 70.h,
                width: 1.sw,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {

                    });
                  },
                  controller: fullnamecontroller,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: man_400_16_626A
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 70.h,
                width: 1.sw,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {

                    });
                  },
                  controller: emailcontroller,

                  validator: (email) {
                    if (email!.isEmpty ||email == null ) {
                      return 'Please Enter email';
                    }  if (!RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email!)){
                      return 'Please Enter a Valid Email';

                    } else {
                      return null;
                    }

                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                  suffix: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreenEmail()),
                        );
                      },
                      child: Text('verify',style: man_400_14_006D,)),

                      hintText: 'Email',
                      hintStyle: man_400_16_626A
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 70.h,
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
                  controller: passwordcontroller,
                  obscureText: _obscureText,

                  onChanged: (val) {
                    setState(() {

                    });
                  },
                  decoration: InputDecoration(

                    hintText: 'Password',
                    hintStyle: man_400_16_626A,
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
          Container(
            height: 70.h,
            width: 1.sw,
            child: TextFormField(
              validator: (valuee){
                if(valuee!.isEmpty)
                  return 'Please Enter a Valid Password ';
                if(valuee!= passwordcontroller.text) {
                  return 'Passwords don’t match!';
                }else{
                  return null;
                }
              },
              controller: confirmpasswordcontroller,
              obscureText: _obscureText1,
              onChanged: (val) {
                setState(() {

                });
              },
              decoration: InputDecoration(
                hintText: ' Confirm Password',
                hintStyle: man_400_16_626A,
                suffixIcon: InkWell(
                  onTap: _togglee,
                  child:    Image(image: AssetImage(
                      _obscureText1  ?'Assets/Icons/hidepass.png':
                      'Assets/Icons/showpass.png')),
                ),
              ),
            ),
          ),
              Spacer(),
              Button(height: 56.h, width: 1.sw, title: 'SIGNUP', txtstyle:
              fullnamecontroller.text.isEmpty || emailcontroller.text.isEmpty || passwordcontroller.text.isEmpty || confirmpasswordcontroller.text.isEmpty?
              man_400_16_626A:man_500_16_ff, onTap: () {
                _form.currentState?.validate();
              }, color:
              fullnamecontroller.text.isEmpty || emailcontroller.text.isEmpty || passwordcontroller.text.isEmpty || confirmpasswordcontroller.text.isEmpty?
              kB5BABA:k006D77),
          ],),
        ),
      ),
    );
  }
}
