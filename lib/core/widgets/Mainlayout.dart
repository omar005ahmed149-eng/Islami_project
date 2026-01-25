import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/widgets/time.dart';
import 'package:islami/core/widgets/hadeth.dart';
import 'package:islami/core/widgets/quran.dart';
import 'package:islami/core/widgets/radio.dart';
import 'package:islami/core/widgets/sebha.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> tabs=[
    Quran(),
    Hadeth(),
    Sebha(),
    Radio1(),
    Time(),
  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.black,
      body:tabs[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
      BottomNavigationBarItem(icon: _Activation(IconManager.quran,selectedindex==0),label: "Quran"),
      BottomNavigationBarItem(icon:  _Activation(IconManager.hadeth,selectedindex==1),label: "Hadeth"),
      BottomNavigationBarItem(icon:  _Activation(IconManager.sebha,selectedindex==2),label: "Sebha"),
      BottomNavigationBarItem(icon:  _Activation(IconManager.radio,selectedindex==3),label: "Radio"),
      BottomNavigationBarItem(icon:  _Activation(IconManager.time,selectedindex==4),label: "Time"),
      ],
        onTap:(index){
        selectedindex=index;
        setState(() {

        });
        },
        currentIndex: selectedindex,


      )
    );
  }
Widget _Activation(String iconName , bool isSelected){
    return isSelected ? Container(
      decoration: BoxDecoration(
        color: ColorManger.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
        child:ImageIcon(AssetImage(iconName)))):ImageIcon(AssetImage(iconName)
    );
}
}
