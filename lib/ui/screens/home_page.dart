// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:xylophone/ui/widgets/base_body.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xylophone/ui/widgets/xylophone_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BaseBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          XylophoneButton(buttonColor: Colors.red, soundNum: 1),
          XylophoneButton(buttonColor: Colors.orange, soundNum: 2),
          XylophoneButton(buttonColor: Colors.yellow, soundNum: 3),
          XylophoneButton(buttonColor: Colors.green, soundNum: 4),
          XylophoneButton(buttonColor: Colors.blue, soundNum: 5),
          XylophoneButton(buttonColor: Colors.indigo, soundNum: 6),
          XylophoneButton(buttonColor: Colors.purple, soundNum: 7),
        ],
      ),
    ));
  }
}
