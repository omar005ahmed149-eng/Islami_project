import 'package:islami/core/manging/pics_manager.dart';

class OnBoardingInfo {
  final String text;
  final String image;
  final String? text2;

  OnBoardingInfo({required this.text, required this.image, this.text2});
}
List<OnBoardingInfo> pages=[
  OnBoardingInfo(text: "Welcome To Islami App", image: PicsManager.On_Boarding_Screen1,),
  OnBoardingInfo(text: "Welcome To Islami App", image: PicsManager.On_Boarding_Screen2,text2:"We are Very Excited To Have You In Our Community",),
  OnBoardingInfo(text: "Reading the Quran", image: PicsManager.On_Boarding_Screen3,text2:"Read,and your Lord is the Most Generous",),
  OnBoardingInfo(text: "Bearish", image: PicsManager.On_Boarding_Screen4,text2:"Praise the name of your Lord, the Most High",),
  OnBoardingInfo(text: "Holy quran Radio", image: PicsManager.On_Boarding_Screen5,text2:"You can Listen to the Holy Quran through for free and easily",),
];