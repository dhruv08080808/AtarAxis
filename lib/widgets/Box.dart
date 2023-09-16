import 'package:atar_axis/Constants/Colors.dart';
import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Box extends StatelessWidget {
  final String imggg;
  final String texttt;
  final String booking;
  const Box({super.key, required this.imggg, required this.texttt, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Container(


      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),

          border: Border.all(color: kFFFFFF)),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18,vertical: 16.h),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
          Image.asset(imggg,height: 96,width: 146,),

          Text(texttt,style: man_500_16_00,maxLines: 1),
          SizedBox(height: 8),
          Text(booking,style: man_400_14_626A,),
        ],),
      ),
    );
  }
}
