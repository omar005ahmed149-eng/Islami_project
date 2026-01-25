import 'package:flutter/material.dart';
import 'package:islami/core/widgets/Mainlayout.dart';
import 'package:islami/core/widgets/On_Boarding_Screen.dart';
import 'package:islami/core/widgets/core/sura_detail_Screen.dart';
import 'package:islami/core/widgets/time.dart';
import 'package:islami/core/widgets/hadeth.dart';
import 'package:islami/core/widgets/quran.dart';
import 'package:islami/core/widgets/radio.dart';
import 'package:islami/core/widgets/sebha.dart';




abstract class RoutesManger {
  static const String MainLayout ="suradetails";
  static const String suraDetails ="suradetails";
  static const String quran ="/quran";
  static const String hadeth ="/hadeth";
  static const String sebha ="/sebha";
  static const String radio ="/radio";
  static const String time ="/time";
  static const String on_boarding ="on_boarding";
  static Map<String,WidgetBuilder> routes ={
  quran:(context)=> Quran(),
  hadeth:(context)=> Hadeth(),
  sebha:(context)=> Sebha(),
  radio:(context)=> Radio1(),
  time:(context)=> Time(),
  suraDetails:(context)=>SuraDetailScreen(),
  on_boarding:(context)=>OnBoardingScreen(),
    MainLayout:(context)=>MainScreen(),
};
}