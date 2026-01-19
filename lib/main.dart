import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/themedata.dart';
import 'package:islami/core/widgets/Mainlayout.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false ,
     home: MainScreen(),
      theme:Themedata.light
    );
  }
}
