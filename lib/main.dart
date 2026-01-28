import 'package:flutter/material.dart';
import 'package:islami/core/manging/routes_manger.dart';
import 'package:islami/core/themedata.dart';
import 'package:islami/core/widgets/Mainlayout.dart';
import 'package:islami/core/widgets/On_Boarding_Screen.dart';
import 'package:islami/core/widgets/core/sura_detail_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final OnBoarding = prefs.getBool('seenOnboarding') ?? false;
  runApp( Islami(seenOnboarding: OnBoarding,));
}


class Islami extends StatelessWidget {
  final bool seenOnboarding;
  const Islami({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false ,
     home:seenOnboarding?MainScreen(): OnBoardingScreen(),
      theme:Themedata.light,
      routes: {
  RoutesManger.suraDetails:(context)=>SuraDetailScreen(),
        RoutesManger.mainLayout:(context)=>MainScreen(),
    },
    );
  }
}
