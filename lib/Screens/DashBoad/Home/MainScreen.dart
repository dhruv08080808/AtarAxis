import 'package:atar_axis/Constants/TextStyle.dart';
import 'package:atar_axis/Screens/DashBoad/Home/InstantBooking/InstantBooking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Constants/Colors.dart';
import '../../../widgets/Box.dart';
import '../../../widgets/ClipRreact.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../widgets/Container.dart';
import 'HomeWidgets/Psychologist Info.dart';
import 'HomeWidgets/home_grid_view.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
var imagess=[
  'Assets/Images/gridviewcount1.png',
  'Assets/Images/gridviewcount2.png',
  'Assets/Images/gridviewcount3.png',
    'Assets/Images/gridviewcount4.png',
  'Assets/Images/gridviewcount5.png',
  'Assets/Images/gridviewcount6.png',
  'Assets/Images/gridviewcount7.png',
  'Assets/Icons/rightticon.png',
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
var  txtt=[
  'Nature',
  'Birds',
  'Nature',
  'Birds',
];
var nameeee=[
  'Raghuram Singh ddhsdgh',
  'Animesh Jain',
  'Raghuram Singh ddhsdgh',
  'Animesh Jain',
];
var statuss=[
  'psychologist',
  'Cardiologist',
  'psychologist',
  'Cardiologist',
];
  int currentIndex = 0;
  var SearchC =TextEditingController();
var immmages=[
  'Assets/Images/Nature.png',
'Assets/Images/birdii.png',
  'Assets/Images/Nature.png',
  'Assets/Images/birdii.png'
];
var activity=[
  'Walking',
  'Running',
  'gym'
];
var photo=[
  'Assets/Images/psychologistgirl.png',
  'Assets/Images/animeshjain.png',
  'Assets/Images/ekta round.png',
  'Assets/Images/Faisal Khan.png'
];
var exp=[
  '12 Yrs. Exp',
  '14 Yrs. Exp',
  '12 Yrs. Exp',
  '14 Yrs. Exp',
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kEDF6F9,
      appBar: AppBar(
          backgroundColor:k5A72ED ,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text('Good Morning, Pankaj',style: man_700_20_FF),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Image.asset('Assets/Icons/BELLICON.png'),
        )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  alignment: Alignment.center,
                  constraints:  BoxConstraints(
                    maxWidth:1.sw ,
                    maxHeight: 300,
                  ),
                  color: k5A72ED,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Container(
                        height: 52,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kFFFFFF,
                          borderRadius: BorderRadius.circular(16),
                          // image: DecorationImage(image: AssetImage('assets/Icons/Searchiconn.png'),
                          //   alignment: Alignment.centerLeft,
                          //
                          // )
                        ),
                        child:TextFormField(
                          controller: SearchC,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Image(image: AssetImage('Assets/Icons/SearchIcon.png')),
                            contentPadding: EdgeInsets.all(15),
                            hintText:'Search for health problem, Psychologist',
                            hintStyle:man_400_14_626A,
                          ),
                        ),
                      ),
                      SizedBox(height: 36),
                      Text('In the Spotlight',style: man_700_16_FF),
                      SizedBox(height: 8),
                      Text('Explore deals, offers and more',style:man_400_16_CB,),
                      SizedBox(height: 24),
                    ]),
              ),
                CarouselSlider(items: [
                  Container(child: Image.asset('Assets/Images/offer_1.png')),
                  Container(child: Image.asset('Assets/Images/offer_2 .png')),
                  Container(child: Image.asset('Assets/Images/offer_3 .png')),
                ], options:CarouselOptions(
                  padEnds: true,
                  height: 200.0,
                  autoPlay: true,
                  aspectRatio: 4/3,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason ){
                    setState(() {
                      currentIndex=index;
                    });
                  },
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.83,
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
SizedBox(height: 40),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24),
  child:   Container(
    width: 1.sw,
    height: 160,

   decoration:  BoxDecoration(

borderRadius: BorderRadius.circular(16),
     gradient: LinearGradient(
           begin: Alignment.topRight,
           end: Alignment.topLeft,
           colors: [
             kFEBDB3.withOpacity(0.56),
             k82DDF0.withOpacity(0.56),
     ]
     ),
   ),
child: Stack(
  children: [
          Padding(
            padding: const EdgeInsets.only(top: 24,left: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
Text('Upcomming Appointments',style: man_700_16_001314),
              SizedBox(height: 8),
              Text('10 June 2022, 8:00AM',style:man_400_14_001314),
                  SizedBox(height: 20),
                  Row(children: [
                    Image.asset('Assets/Images/girl.png',height: 48,width: 48),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Priyanka singh',style: man_400_14_001314),
                        SizedBox(height: 4),
                        Text('Psychologist',style: man_400_12_626A,)
                    ],)
                  ],)
    ]),
          ),
    Positioned(child: Image.asset('Assets/Images/allinone.png',height: 156,),
        right: 0,)])),
),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Choose from Top Specialities',style: man_700_16_001314,textAlign:TextAlign.start),
                      SizedBox(height: 8),
                      Text('Book confirmed appointments',style: man_400_16_626A),
                      SizedBox(height: 24),
                      specialistHome(),

                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(child: GestureDetector(
onTap: (){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => InstantBooking()),
  );
},
                          child: Box(imggg: 'Assets/Images/instantbookingg.png', texttt: 'Instant Booking', booking: 'Connect within 60 s'))),
                      SizedBox(width: 16),
                      Expanded(child: Box(imggg: 'Assets/Images/bookappointnment.png', texttt: 'Book Apointment', booking: 'Scheduled Booking')),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('We are here to help you',style: man_700_16_001314),
                      SizedBox(height: 8),
                      Text('Book confirmed appointments',style: man_400_16_626A),
                      SizedBox(height: 24),
    SizedBox(
      height: 200.h,
      child: GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          itemCount: nameeee.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,childAspectRatio: 0.25), itemBuilder: (context, i){
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  decoration:BoxDecoration(
               borderRadius: BorderRadius.circular(16)
          ),
                  child: Image.asset(photo[i])),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nameeee[i],style: man_400_16_0013),
                  SizedBox(height: 8),
                  Text(statuss[i],style: man_400_14_626A),
                  SizedBox(height: 8),
                  Row(children: [
                    Image.asset('Assets/Images/Star 1.png'),
                    SizedBox(width: 4),
                    Text('4.0'),
                    SizedBox(width: 4),
                    Text('.'),
                    SizedBox(width: 4),
                    Text(exp[i]),
                  ],)

                ],)
            ],),
        );

      }),
    ),
                      SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Button(height: 56, width: 380, title: 'View All Psychologist', txtstyle: man_500_16_006D, onTap: () {  }, color:kFFFFFF),
                      ),

                      // Psychologist(imagge: 'Assets/Images/psychologistgirl.png', namee: 'Raghuram Singh ddhsdgh', Docstatus: 'psychologist', exp: '12 Yrs. Exp'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 20,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recommended videos',style: man_700_16_001314),
                      SizedBox(height: 8),
                      Text('Relax your mind with us',style: man_400_16_626A),
                      SizedBox(height: 24),
                      SizedBox(
                        height: 167,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context,i){
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height:140,
                                    child:
                                    Image.asset(immmages[i],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(txtt[i],style: man_500_16_00),
                                ],
                              );
                            }, separatorBuilder: (context,i){
                          return SizedBox(width: 16);
                        }, itemCount: immmages.length
                        ),

                      ),

                           SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Button(height: 56, width: 380, title: 'View All Videos', txtstyle: man_500_16_006D, onTap: () {  }, color:kFFFFFF ),
                      ),
                      SizedBox(height: 20),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Recommended activities',style: man_700_20_001314),
                         SizedBox(height: 8),
                         Text('Boost your energy',style: man_400_16_626A),
                         SizedBox(height: 16),
                         SizedBox(
                           height: 87,
                           child: ListView.separated(
                               scrollDirection: Axis.horizontal,
                               shrinkWrap: true,
                               itemBuilder: (context,i){
                                 return
                                     Container(
                                       height: 87.h,
                                       width: 248,
                                       decoration: BoxDecoration(
                                         image: DecorationImage(image: AssetImage('Assets/Images/design.png')),
                                      color: k5A72ED,
                                         borderRadius: BorderRadius.circular(12)
                                       ),
                                       child: Center(child: Text(activity[i],style: man_600_18_ff,)),
                                     );
                               }, separatorBuilder: (context,i){
                             return SizedBox(width: 16);
                           }, itemCount: activity.length
                           ),

                         ),
                         SizedBox(height: 36),
                         Padding(
                           padding: const EdgeInsets.only(right: 24),
                           child: Button(height: 56, width: 380, title: 'View All Activities', txtstyle: man_500_16_006D, onTap: () {  }, color:kFFFFFF),
                         ),
                       ],
                     ),
                    ],
                  ),
                ),
                Container(

                  color:k006D77,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('Assets/Icons/ataraxislogo.png',height: 44,width: 44,),
                            SizedBox(height: 8),
                            Text('Care',style: man_400_20_FF),
                            Text('bral',style: man_700_20_FF),
                            SizedBox(height: 16),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text('Our vision is to help mankind live healthier, longer lives by making quality healthcare accessible, and affordable',style: man_400_20_FF_72),
                              SizedBox(height: 16),
                        Text('Made by Locgfx @ Delhi.',style: man_400_14_ff,)
                        
                      ],),
                  ),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


