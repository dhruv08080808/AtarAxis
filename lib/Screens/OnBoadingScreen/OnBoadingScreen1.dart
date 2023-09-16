import 'dart:async';

import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/material.dart';

import '../../Constants/Colors.dart';
import '../../widgets/Container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../LoginScreen/Login.dart';
class OnBoadingScreen extends StatefulWidget {
  const OnBoadingScreen({super.key});

  @override
  State<OnBoadingScreen> createState() => _OnBoadingScreenState();
}

class _OnBoadingScreenState extends State<OnBoadingScreen> {
  List<Widget>  list=<Widget>[
 Column(

   children: [
     SizedBox(height: 50),
Text('Book an instant appointment with the right  Psychologists,',style: man_700_20_001314),
     SizedBox(height: 40),
     Image.asset('Assets/Images/onboading1.png',height: 375.h,width: 1.sw),
   ],
 ),
    Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Text('Get 24*7 Chat Support',style: man_700_20_001314),
        SizedBox(height: 40),
        Image.asset('Assets/Images/onboading2.png',height: 375.h,width: 1.sw),
      ],
    ),
    Column(
      children: [
        SizedBox(height: 50),
        Text('Schedule meeting as per your requirnment',style: man_700_20_001314),
        SizedBox(height: 40),
        Image.asset('Assets/Images/onboading3.png',height: 375.h,width: 1.sw),
      ],
    ),
    Column(
      children: [
        SizedBox(height: 50),
        Text('Get Expert Guidance from Certified Counsellors And Therapists',style: man_700_20_001314),
        SizedBox(height: 40),
        Image.asset('Assets/Images/onboading4.png',height: 375.h,width: 1.sw),
      ],
    )
  ];

  int currentIndex = 0;
   final  _controller=PageController( );

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      Duration(seconds: 2),
          (Timer timer) {
        _controller.nextPage(duration: Duration(milliseconds: 300), curve:Curves.easeIn);
      },
    );
  }

  Timer ? timer;

@override
  void dispose() {
  timer?.cancel();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9,
body:

Padding(
  padding:  EdgeInsets.only(top: 100.h,left:24,right: 24,bottom: 20),
  child:   Column(

    children: [

          Expanded(

            child: PageView(

            scrollDirection: Axis.horizontal,

          // reverse: true,

              // physics: BouncingScrollPhysics(),

        controller: _controller,
        onPageChanged: (num){
            setState(() {
              currentIndex=num;
            });

        },

        children:

        list ,





      ),

          ),



      Container(
        height:4,
        width: 72,
        decoration: BoxDecoration(color: Colors.grey.shade200),

        child: Row(children: [
          AnimatedContainer(
              height:4, width:18,
              color:currentIndex==0? k5A72ED:Colors.transparent,
              duration:Duration(milliseconds: 10)
          ),
          AnimatedContainer(
              height:4,
              width:18,
              color: currentIndex==1? k5A72ED:Colors.transparent,
              duration:Duration(milliseconds: 10)
          ),
          AnimatedContainer(
              height:4,
              width:18,
              color: currentIndex==2? k5A72ED:Colors.transparent,
              duration:Duration(milliseconds: 10)
          ),
          AnimatedContainer(
              height:4,
              width:18,
              color: currentIndex==3? k5A72ED:Colors.transparent,
              duration:Duration(milliseconds: 10)
          ),
        ],),
      ),

      SizedBox(height:49),
      Button(img : Image.asset('Assets/Icons/rightarrow.png'),height: 56.h, width: 1.sw, title: 'I am seeking help', txtstyle: man_500_16_ff, onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }, color:k006D77),
      SizedBox(height: 23),
      Button(height: 56.h, width: 1.sw, title: 'I am a psychologist', txtstyle: man_500_16_006D, onTap: () {}, color:kFFFFFF),

    ],

  ),
),



    );
  }
}
