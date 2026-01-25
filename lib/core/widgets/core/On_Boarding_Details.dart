import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';

class OnBoardingDetails extends StatelessWidget {
   OnBoardingDetails({super.key,required this.text,required this.image,text2,});
   late String text;
   late String image;
   late String text2="";
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.black,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(PicsManager.header),
          Image.asset(image),
          Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: ColorManger.gold),),
          text2.isEmpty?SizedBox(height: 20):
          Text(text2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: ColorManger.gold,),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
        ],
      ),
    ) ;
  }
}
