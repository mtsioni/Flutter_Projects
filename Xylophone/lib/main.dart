// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio('assets/sounds/assets_note$soundNumber.wav'),
    );
  }

  Expanded buildKey({boxColor, soundNumber, boxText}) {
    return Expanded(
      child: FilledButton(
        style: ButtonStyle(
          enableFeedback: false,
          backgroundColor: MaterialStateProperty.all(boxColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          boxText,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w600,
            fontFamily: 'Neucha',
            color: Color(0xFFCFD8DC),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(boxColor: Colors.red, soundNumber: 1, boxText: 'Do'),
              buildKey(boxColor: Colors.orange, soundNumber: 2, boxText: 'Re'),
              buildKey(boxColor: Colors.yellow, soundNumber: 3, boxText: 'Mi'),
              buildKey(boxColor: Colors.green, soundNumber: 4, boxText: 'Fa'),
              buildKey(boxColor: Colors.teal, soundNumber: 5, boxText: 'Sol'),
              buildKey(boxColor: Colors.blue, soundNumber: 6, boxText: 'La'),
              buildKey(
                  boxColor: Colors.deepPurple, soundNumber: 7, boxText: 'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
