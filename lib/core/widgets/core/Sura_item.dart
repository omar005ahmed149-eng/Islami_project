import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/manging/routes_manger.dart';
import 'package:islami/core/manging/sura%20model.dart';

class SuraItem extends StatefulWidget {
   SuraItem({super.key,required this.suraModel});
   SuraModel suraModel;

  @override
  State<SuraItem> createState() => _SuraItemState();
}

class _SuraItemState extends State<SuraItem> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, RoutesManger.suraDetails,arguments: widget.suraModel);
        setState(() {
        });
      },
      child: Row(

        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage(PicsManager.SuraIndex)),
              Text(widget.suraModel.suraIndex.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorManger.white),)
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.suraModel.englishName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorManger.white),),
              Text("${widget.suraModel.ayaCount} Verses",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ColorManger.white),),

            ],
          ),
          Spacer(),
          Text(widget.suraModel.arabicName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorManger.white),),


        ],
      ),
    );
  }
}
