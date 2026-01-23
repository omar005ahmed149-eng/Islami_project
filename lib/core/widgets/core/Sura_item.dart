import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/manging/routes_manger.dart';
import 'package:islami/core/manging/sura%20model.dart';
import 'package:islami/core/widgets/core/Sura_Details_arguments.dart';

class SuraItem extends StatelessWidget {
   SuraItem({super.key,required this.suraModel, });
   SuraModel suraModel;
   @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, RoutesManger.suraDetails,arguments: suraModel);
      },
      child: Row(

        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(PicsManager.SuraIndex)),
              Text(suraModel.suraIndex.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorManger.white),)
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraModel.englishName,style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold,color: ColorManger.white),),
              Text("${suraModel.ayaCount} Verses",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorManger.white),),

            ],
          ),
          Spacer(),
          Text(suraModel.arabicName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorManger.white),),


        ],
      ),
    );
  }
}
