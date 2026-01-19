import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/sura%20model.dart';

class SuraDetailScreen extends StatelessWidget {
  const SuraDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuraModel suraModel= ModalRoute.of(context)?.settings.arguments as SuraModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(suraModel.englishName),

      ),
      backgroundColor: ColorManger.black,
    );
  }
}
