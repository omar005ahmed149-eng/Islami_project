import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';

class Radio1 extends StatelessWidget {
  const Radio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          decoration: BoxDecoration(
            color: ColorManger.black,
            image: DecorationImage(
              image: AssetImage(PicsManager.Radio_background),
              fit: BoxFit.cover,
            ),
          ),
          child:  Column(
            children: [
              Image.asset(PicsManager.header),
              
            ],
          ),
        ),
    );
  }
}
