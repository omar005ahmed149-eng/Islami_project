import 'package:flutter/material.dart';
import 'package:islami/core/manging/color_manger.dart';
import 'package:islami/core/manging/pics_manager.dart';

class RadioItems extends StatefulWidget {
  const RadioItems({super.key});

  @override
  State<RadioItems> createState() => _RadioItemsState();
}

class _RadioItemsState extends State<RadioItems> {
  bool isVolumeOn = false;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorManger.gold,
          borderRadius: BorderRadius.circular(16),

        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            play
                ? Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                                PicsManager.Radio_Item_Footer,
                                color: ColorManger.black,
                    fit: BoxFit.cover,
                  ),
                )
                : Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: Image.asset(PicsManager.footer, color: ColorManger.black),
                ),
            Column(
              children: [
                Text(
                  "Radio Ibrahim Al-Akdar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.099),
                    InkWell(
                      onTap: () {
                        play = !play;
                        print("play $play");
                        setState(() {});
                      },
                      child: play
                          ? Icon(Icons.pause, size: 40)
                          : Icon(Icons.play_arrow_rounded, size: 40),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    InkWell(
                      onTap: () {
                        isVolumeOn = !isVolumeOn;
                        setState(() {});
                      },
                      child: isVolumeOn
                          ? Icon(Icons.volume_up, size: 40)
                          : Icon(Icons.volume_off, size: 40),
                    ),
                  ],
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
class RadioItems2 extends StatefulWidget {
  const RadioItems2({super.key});

  @override
  State<RadioItems2> createState() => _RadioItemsState2();
}

class _RadioItemsState2 extends State<RadioItems2> {
  bool isVolumeOn = false;
  bool play = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorManger.gold,
          borderRadius: BorderRadius.circular(16),

        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            play
                ? Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                PicsManager.Radio_Item_Footer,
                color: ColorManger.black,
                fit: BoxFit.cover,
              ),
            )
                : Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: Image.asset(PicsManager.footer, color: ColorManger.black),
            ),
            Column(
              children: [
                Text(
                  "Ibrahim Al-Akdar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.099),
                    InkWell(
                      onTap: () {
                        play = !play;
                        print("play $play");
                        setState(() {});
                      },
                      child: play
                          ? Icon(Icons.pause, size: 40)
                          : Icon(Icons.play_arrow_rounded, size: 40),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    InkWell(
                      onTap: () {
                        isVolumeOn = !isVolumeOn;
                        setState(() {});
                      },
                      child: isVolumeOn
                          ? Icon(Icons.volume_up, size: 40)
                          : Icon(Icons.volume_off, size: 40),
                    ),
                  ],
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
