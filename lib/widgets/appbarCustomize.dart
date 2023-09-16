import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/textstyle.dart';
class Customizeappbar extends StatelessWidget implements PreferredSizeWidget {
  final String bar;
  final String end;
  Customizeappbar({super.key, required this.bar, required this.end});
  @override
  Size get preferredSize => Size.fromHeight(52);
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Image.asset('Assets/Icons/back_icon.png'),
                  )
              ),
              Align(child: Text(bar,style: man_500_16_006D),
                alignment: Alignment.center,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(end,style: man_500_16_006D),
              )
            ]),
      ),
    );
  }




}
