import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/manging/sura%20model.dart';
import 'package:islami/core/widgets/core/Sura_Details_arguments.dart';
import 'package:islami/core/widgets/core/Sura_item.dart';

class SuraDetailScreen extends StatefulWidget {
  SuraDetailScreen({super.key});

  @override
  State<SuraDetailScreen> createState() => _SuraDetailScreenState();
}

class _SuraDetailScreenState extends State<SuraDetailScreen> {
List<String> verses =[];
late SuraModel arguments;


  @override
  void didChangeDependencies() {
  super.didChangeDependencies();
  arguments= ModalRoute.of(context)?.settings.arguments as SuraModel;
loadSuraContent(arguments.suraIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.englishName),

      ),
      backgroundColor: ColorManger.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.asset(PicsManager.left_header)),
                Expanded(child: Center(child: Text(arguments.arabicName,
                  style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ColorManger.gold),))),
                Expanded(child: Image.asset(PicsManager.right_header)),
              ],
            ),
            Expanded(child: verses.isEmpty?
            CircularProgressIndicator(color: ColorManger.gold,)
                :ListView.builder(itemBuilder: (context, index)=>Container(
              padding: EdgeInsets.symmetric(vertical:10 ),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: ColorManger.gold,width: 2)
              ),
                  child: Text("${verses[index]}",
                              style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: ColorManger.gold),textDirection: TextDirection.rtl,),
                ))
            )
          ],
        ),
      ),
    );
  }

    Future<void> loadSuraContent(int index) async {

      String filePath = "lib/core/files/Suras/${index}.txt";
      String filecontent = await rootBundle.loadString(filePath);
      List<String> SuraContent = filecontent.trim().split("\n").where((line) => line.trim().isNotEmpty)
          .toList();
      for(int i=0;i<SuraContent.length;i++){
        SuraContent [i]+="[${i+1}]";
        if(i>=SuraContent.length) {
          break;
        }

      }
      Future.delayed(Duration(seconds: 1));
      verses= SuraContent;
      setState(() {});
  }
}