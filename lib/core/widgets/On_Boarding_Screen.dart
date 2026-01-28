import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/manging/routes_manger.dart';
import 'package:islami/core/widgets/core/On_Boarding_Details.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLastPage=false;
  List<Widget> pages=[
    OnBoardingDetails(text: "Welcome To Islami App", image: PicsManager.On_Boarding_Screen1,),
    OnBoardingDetails(text: "Welcome To Islami App", image: PicsManager.On_Boarding_Screen2,text2:"We are Very Excited To Have You In Our Community",),
    OnBoardingDetails(text: "Reading the Quran", image: PicsManager.On_Boarding_Screen3,text2:"Read,and your Lord is the Most Generous",),
    OnBoardingDetails(text: "Bearish", image: PicsManager.On_Boarding_Screen4,text2:"Praise the name of your Lord, the Most High",),
    OnBoardingDetails(text: "Holy quran Radio", image: PicsManager.On_Boarding_Screen5,text2:"You can Listen to the Holy Quran through for free and easily",),
  ];
  late int counter=0;
  @override
  Widget build(BuildContext context) {
    PageController _controler=PageController();
    return Scaffold(
      body:Stack(
        children: [
          PageView(
            controller: _controler,
            children: [
              pages[0],
              pages[1],
              pages[2],
              pages[3],
              pages[4],
            ],
          ),
          Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsetsGeometry.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(child: Text("Back",style: TextStyle(color: ColorManger.gold,fontSize: 20),),
                  onTap: () {
                    _controler.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear);
                    counter--;
                   setState(() {
                     if (counter < 0) {
                       counter = 0;
                     }
                   });
                  }
                  ),
                  Spacer(flex: 2,),
                  SmoothPageIndicator(
                    onDotClicked: (index)=>PageController().animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.linear),
                    controller: _controler,
                    count: pages.length,
                    effect: WormEffect(
                        activeDotColor: ColorManger.gold
                    ),
                  ),
                  Spacer(flex: 2,),
                  GestureDetector(child: Text("Next",style: TextStyle(color: ColorManger.gold,fontSize: 20),
                  ),
                    onTap: (){

                          _controler.nextPage(duration: Duration(milliseconds: 500) ,curve: Curves.linear);
                          counter++;
                          if(counter==pages.length){
                            isLastPage=true;
                            navigateToHomeScreen(context);
                          }
                          setState(() {

                          });
                        }
                    )],
                )),
          ],
        )
    );
  }
void navigateToHomeScreen(BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);
    Navigator.pushReplacementNamed(context, RoutesManger.mainLayout);
  }
} 