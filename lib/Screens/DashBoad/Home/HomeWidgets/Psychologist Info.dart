import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/cupertino.dart';

class Psychologist extends StatelessWidget {
  final String imagge;
  final String namee;
  final String Docstatus;
  final String exp;
  const Psychologist({super.key, required this.imagge, required this.namee, required this.Docstatus, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Image.asset(imagge),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(namee,style: man_400_16_0013),
          SizedBox(height: 8),
          Text(Docstatus,style: man_400_14_626A),
          SizedBox(height: 8),
          Row(children: [
            Image.asset('Assets/Images/Star 1.png'),
            SizedBox(width: 4),
            Text('4.0'),
            SizedBox(width: 4),
            Text('.'),
            SizedBox(width: 4),
            Text(exp),
          ],)
          
        ],)
      ],),
    );
  }
}
