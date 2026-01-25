import 'package:flutter/material.dart';
import 'package:islami/core/manging/routes_manger.dart';
import 'package:islami/core/themedata.dart';
import 'package:islami/core/widgets/Mainlayout.dart';
import 'package:islami/core/widgets/On_Boarding_Screen.dart';
import 'package:islami/core/widgets/core/sura_detail_Screen.dart';
import 'package:islami/core/widgets/sebha.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false ,
     home: OnBoardingScreen(),
      theme:Themedata.light,
      routes: {
  RoutesManger.suraDetails:(context)=>SuraDetailScreen(),
    },
    );
  }
}
