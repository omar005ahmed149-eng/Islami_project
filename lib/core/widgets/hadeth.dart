import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';
import 'package:islami/core/widgets/core/hadeeth_item.dart';

class Hadeth extends StatelessWidget {
  const Hadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(PicsManager.background1),
        Column(
          children: [
            Image.asset(PicsManager.header,
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.height*0.7,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 600.0,
              viewportFraction: 0.8 ,
              enableInfiniteScroll: true,
                enlargeCenterPage: true
              ),
              items: List.generate(50, (index)=> index+1 ).map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return HadeethItem(index: i);
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
