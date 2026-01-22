import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/widgets/core/hadeethmogel.dart';

class HadeethItem extends StatefulWidget {
   HadeethItem({super.key,required this.index});
int index;


  @override
  State<HadeethItem> createState() => _HadeethItemState();
}

class _HadeethItemState extends State<HadeethItem> {
  Hadeethmodel? hadeeth;
  @override
  Widget build(BuildContext context) {
    if(hadeeth==null) {
      loadSuraContent(widget.index);
    }
    return Container(
      padding: EdgeInsets.only(top: 12,right: 12,left: 12),
      height: 300,
      decoration: BoxDecoration(
          color: ColorManger.gold,
          borderRadius: BorderRadius.circular(22),
        image: DecorationImage(image: AssetImage(PicsManager.Hadeeth_background))
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children:[ Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Image.asset(PicsManager.left_header,color: ColorManger.black,)),


                Expanded(child: Image.asset(PicsManager.right_header,color: ColorManger.black)),
              ],
            ),
              Text( hadeeth?.title??" ",style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.black)),
          ]),
          Expanded(
              child:hadeeth==null?Center(child: CircularProgressIndicator(color: ColorManger.black,),):
          Center(child: SingleChildScrollView(
            child: Text(
              hadeeth! .content,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.black),),
          ))),
          Image.asset(PicsManager.footer,color: ColorManger.black,)
        ],
      ),
    );
  }

  Future<void> loadSuraContent(int index) async {
    String filePath = "lib/core/files/Hadeeth/h$index.txt";
    String filecontent = await rootBundle.loadString(filePath);
    List<String> hadeethlines = filecontent.trim().split("\n");
    String title = hadeethlines[0];
    hadeethlines.remove(0);
    String content= hadeethlines.join();
    hadeeth=Hadeethmodel(title: title, content: content);
    setState(() {
    });
  }
}
