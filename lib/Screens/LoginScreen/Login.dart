import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:atar_axis/Screens/LoginScreen/ForgotPass.dart';
import 'package:atar_axis/Screens/LoginScreen/Signup.dart';
import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../widgets/Container.dart';
import '../../widgets/ContainerWithBorder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _form=GlobalKey<FormState>();
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  bool _obscureText = true;
  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: SingleChildScrollView(
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
              SizedBox(height: 30),
              Text('Login',style: man_700_20_001314),
                SizedBox(height: 16),
                Text('Please enter your registered email id or mobile number to continue.',style: man_400_14_626A,),
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
                    decoration: InputDecoration(
                      hintText: 'Email / Mobile Number',
                    ),
                  ),
                ),
SizedBox(height: 16),
                Container(
                  height: 70.h,
                  width: 1.sw,
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: _obscureText,
                    onChanged: (val) {
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: InkWell(
                        onTap: _toggle,
                        child:    Image(image: AssetImage(
                            _obscureText  ?'Assets/Icons/hidepass.png':
                            'Assets/Icons/showpass.png')),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: (){
                      emailcontroller.text.isEmpty?null :

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPass()),
                      );
                    },
                    child: Text('Forgot Password',style: man_500_14_bc)),
                SizedBox(height: 40),
                Button(height: 56.h, width: 1.sw, title: 'LOGIN', txtstyle:
                emailcontroller.text.isEmpty || passwordcontroller.text.isEmpty?
                man_400_16_626A:man_500_16_ff, onTap: () {}, color:
                emailcontroller.text.isEmpty || passwordcontroller.text.isEmpty?
                kB5BABA:k006D77),
                SizedBox(height: 24),
                Center(child: Text('or',style: man_400_16_00)),
                SizedBox(height: 24),
                Buttonwithborder(height: 58.h, width: 1.sw, title: 'Continue with Google', txtstyle: man_500_16_62 , onTap: () {  }, color:Colors.transparent, img: 'Assets/Icons/GOOGLEEiCON.png', bordercolor: kB5BABA),
                SizedBox(height: 16),
                Buttonwithborder(height: 58.h, width: 1.sw, title: 'Continue with Apple', txtstyle: man_500_16_62 , onTap: () {  }, color:Colors.transparent, img: 'Assets/Icons/apple logo.png', bordercolor: kB5BABA),
                SizedBox(height: 24),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Row(
                    children: [
                      Text('New to cerebral?',style: man_400_14_00),
                      Text('SignUp',style: man_500_16_006D,)
                    ],
                  ),
                )


            ],),
          ),
        ),
      ),
    );
  }
}
