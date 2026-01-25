import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';

class Sebha extends StatefulWidget {
   Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double rotationTurns = 0;

  List<String>sebhaWords=["سبحان الله","الحمد لله","الله أكبر"];

   int currentIndex=0;

   int counter=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: ColorManger.black,
          image: DecorationImage(
            image: AssetImage(PicsManager.Sebha_Background),
            fit: BoxFit.cover,
            opacity: Opacity(opacity: 0.2).opacity,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(PicsManager.header),
            Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900,color: ColorManger.white),),
            Image.asset(PicsManager.Sebha_Head),
            InkWell(
              onTap: (){
                ChangeSebhaCounter();
                SebhaRotation();
                setState(() {

                });
              },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(

                      children: [
                        Text(sebhaWords[currentIndex],style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900,color: ColorManger.white),),
                        Text("${counter}",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w900,color: ColorManger.white),),
                      ],
                    ),
                    Column(
                      children: [
                        AnimatedRotation(
                            turns: rotationTurns,
                            duration: Duration(milliseconds: 100),
                            child: Image.asset(PicsManager.Sebha_body)),
                      ],
                    ),

                  ],
                )),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
void ChangeSebhaCounter(){

  if(counter>0){
    counter--;
  }
  if(counter==0){
    currentIndex++;
    counter=30;
    if(currentIndex==sebhaWords.length){
      currentIndex=0;
    }
  }
}
void SebhaRotation(){
  rotationTurns += 0.03;

}
}
