import 'package:atar_axis/widgets/AppBar.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import '../../../../Constants/Colors.dart';
import '../../../../widgets/appbarCustomize.dart';
import '../HomeWidgets/InstantBookingContainer.dart';

class InstantBooking extends StatefulWidget {
  const InstantBooking({super.key});

  @override
  State<InstantBooking> createState() => _InstantBookingState();
}

class _InstantBookingState extends State<InstantBooking> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: Customizeappbar(bar: 'Instant Booking', end: 'Help'),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40,top: 40),
        child: Column(children: [
          CarouselSlider(items: [
            InstantBookingContainer(),
            InstantBookingContainer(),
            InstantBookingContainer(),
          ], options:CarouselOptions(
            padEnds: true,
            height: 124,
            autoPlay: true,
            aspectRatio: 0.7,
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason ){
              setState(() {
                currentIndex=index;
              });
            },
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          ),
          SizedBox(height: 16),
          Column(
            children: [
              Container(
                height:4,
                width: 72,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: k5A72ED.withOpacity(0.16)),
                child: Row(
                  children: [
                    AnimatedContainer(
                        height:4, width:24,
                        color:currentIndex==0? k5A72ED:Colors.transparent,
                        duration:Duration(milliseconds: 10)
                    ),
                    AnimatedContainer(
                        height:4,
                        width:24,
                        color: currentIndex==1? k5A72ED:Colors.transparent,
                        duration:Duration(milliseconds: 10)
                    ),
                    AnimatedContainer(
                        height:4,
                        width:24,
                        color: currentIndex==2? k5A72ED:Colors.transparent,
                        duration:Duration(milliseconds: 10)
                    ),
                  ],),
              ),
            ],
          ),

        ],),
      ),

    );
  }
}
