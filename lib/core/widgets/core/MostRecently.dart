import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';

class Most_recently extends StatelessWidget {
  const Most_recently({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManger.gold,
        borderRadius: BorderRadius.circular(16),

      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 17),
                child: Text("AL-Fatiha",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorManger.black),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 17),
                child: Text("الفاتحة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorManger.black),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 17),
                child: Text("7 Verses",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorManger.black),),
              ),

            ],
          ),
          Image(image: AssetImage(PicsManager.Sura))
        ],
      )
    );
  }
}
