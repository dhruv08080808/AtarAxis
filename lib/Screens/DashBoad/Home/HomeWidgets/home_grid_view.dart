import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:flutter/cupertino.dart';

import '../../../../Constants/Colors.dart';

class specialistHome extends StatelessWidget {
  const specialistHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: 8,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 4,
              childAspectRatio: 0.7 / 1.1,
              mainAxisSpacing: 0.5,
              crossAxisSpacing: 5.0
          ),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_,i) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 84,
                  height: 84,
                  clipBehavior: Clip.hardEdge,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: kFFFFFF,
                    border: Border.all(color: kFFFFFF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Image.asset(imagess[i]),
                ),
SizedBox(height: 8),
                Text(txt[i],style: man_400_16_626A,),
              ],
            );
          }),
    );
  }
}
var imagess=[
  'Assets/Images/gridviewcount1.png',
  'Assets/Images/gridviewcount2.png',
  'Assets/Images/gridviewcount3.png',
  'Assets/Images/gridviewcount4.png',
  'Assets/Images/gridviewcount5.png',
  'Assets/Images/gridviewcount6.png',
  'Assets/Images/gridviewcount7.png',
  'Assets/Images/gridviewcount8.png',
];
var  txt=[
  'Anxiety',
  'Stress',
  'Addiction',
  'Anger',
  'Loneliness',
  'Stress',
  'Grief',
  'Show all'

];