import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Constants/Colors.dart';
class InstantBookingContainer extends StatelessWidget {
  const InstantBookingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:329,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              k5A72ED.withOpacity(0.40),
               k83C5BE.withOpacity(0.40),
            ],
          )
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Connect within 60s',style: man_700_16_001314),
              SizedBox(height: 8),
              Text('Top verified Specialities',style: man_500_14_62),
              SizedBox(height: 16),
              Text('Know More',style: man_500_16_006D),
            ],),
          ),
          Positioned(child: Image.asset('Assets/Images/doctors.png'),
            right: 15,
          top: 40,)
        ],
      ),
    );
  }
}
