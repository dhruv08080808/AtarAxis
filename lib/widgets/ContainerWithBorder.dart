import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
class Buttonwithborder extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final TextStyle txtstyle;
  final Function() onTap;
  final String img;
  final Color color;
  final Color bordercolor;

  const Buttonwithborder({super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.txtstyle, required this.onTap, required this.color, required this.img, required this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: bordercolor),
          color:color,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(img,height:18,width: 18, ),
          SizedBox(width: 8),
          Text(title,style: txtstyle)

        ],)
      ),
    );
  }
}
