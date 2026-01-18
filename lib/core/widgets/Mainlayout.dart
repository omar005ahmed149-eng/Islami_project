import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/widgets/azkar.dart';
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
    Radio1(),
    Azkar(),
    Sebha()
  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.black,
      body:tabs[selectedindex],
      bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.book),label: ""),
      ],
      backgroundColor: ColorManger.gold,
        onTap:(index){
        selectedindex=index;
        setState(() {

        });
        },
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorManger.white,
        unselectedItemColor: ColorManger.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,

      )
    );
  }
}
