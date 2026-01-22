import 'package:flutter/material.dart';
import 'package:islami/core/manging/Constant_manager.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/manging/sura%20model.dart';
import 'package:islami/core/widgets/core/MostRecently.dart';
import 'package:islami/core/widgets/core/Sura_Details_arguments.dart';
import 'package:islami/core/widgets/core/Sura_item.dart';

class Quran extends StatefulWidget {
   Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
   List<SuraModel> filteredList = SuraModel.suraList;

   late SuraModel sura;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(PicsManager.background))
        ),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(PicsManager.header,
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.height*0.7,
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(fontSize: 16,color: ColorManger.white),
              onChanged: (text){
                SearchByName(text) ;
              },
              decoration: InputDecoration(
                labelText:"Sura Name",
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: ColorManger.white),
                prefixIcon  : ImageIcon(AssetImage(IconManager.quran,),color: ColorManger.gold,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ColorManger.gold)
                ),
                enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: ColorManger.gold)
                ),
                ),
              ),
            SizedBox(height: 20),
            Text("Most Recently",style: TextStyle(fontSize: 16,color: ColorManger.white),),
            SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.2,
              child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context,index)=> SizedBox(width: 16 ),
                  itemBuilder: (context,index)=> Most_recently(),

              ),
            ),
            SizedBox(height: 20),
            Text("Sura List",style: TextStyle(fontSize: 16,color: ColorManger.white),),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsetsGeometry.zero,
                itemCount: filteredList.length,
                separatorBuilder: (context,index)=> Container(color: ColorManger.white,height: 2,width: double.infinity, margin: EdgeInsets.symmetric(vertical: 10,horizontal: 50),),
                itemBuilder: (context,index)=>SuraItem(suraModel: filteredList[index] ),

              ),
            ),
            ])
    );
  }

  void SearchByName(String text) {
     if(text.isEmpty) {
       filteredList=SuraModel.suraList;
     }else {
       filteredList=filteredList.where((sura)=>sura.arabicName.contains(text)||
          sura.englishName.toLowerCase().contains(text)).toList();
     }
      setState(() {

      });
  }
}
