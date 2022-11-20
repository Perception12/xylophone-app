// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class XylophoneButton extends StatelessWidget {
  final Color buttonColor;
  final int soundNum;
  const XylophoneButton({
    super.key,
    required this.buttonColor,
    required this.soundNum,
  });

  void playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNum.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
        ),
        child: Text(""),
      ),
    );
  }
}
