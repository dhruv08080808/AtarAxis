import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final TextStyle txtstyle;
  final Function() onTap;
  final Color color;
  final Widget? img;


  const Button({super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.txtstyle, required this.onTap, required this.color,
    this.img,
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
          color:color,
        ),
        child: Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style: txtstyle),
            SizedBox(width: 8),
            img ?? SizedBox(),
          ],
        )),
      ),
    );
  }
}
