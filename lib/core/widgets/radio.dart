import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/widgets/core/Radio_Item.dart';

class Radio1 extends StatefulWidget {
   Radio1({super.key});

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
   int? value;

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
              CupertinoSegmentedControl(
              groupValue: value,
                disabledTextColor:  ColorManger.gold,
                selectedColor: ColorManger.gold,
                borderColor: ColorManger.gold,
                unselectedColor: ColorManger.black,
                pressedColor: ColorManger.black,
                children: {
                0: SegmentsControlItem0("Radio"),
                1:  SegmentsControlItem1("Reciters"),
              }, onValueChanged: (int? val){
                setState(() {
                  value=val;
                });
              } ,),
              value ==0?Expanded(child: ListView.separated(itemBuilder: (context,index)=>RadioItems(),
                  separatorBuilder: (context,index)=>SizedBox(height: 20,),
                  itemCount: 20)):Expanded(child: ListView.separated(itemBuilder: (context,index)=>RadioItems2(),
                  separatorBuilder: (context,index)=>SizedBox(height: 20,),
                  itemCount: 20))
            ],
          ),
        ),
    );
  }
  Widget SegmentsControlItem0(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        child:Text(text,style: TextStyle(color: value==0?ColorManger.black:ColorManger.gold),),
      ),
    );
  }
   Widget SegmentsControlItem1(String text){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         padding: EdgeInsets.all(8),
         child:Text(text,style: TextStyle(color: value==1?ColorManger.black:ColorManger.gold),),
       ),
     );
   }
}
