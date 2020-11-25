import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

void playsound(int n) {
  final player = AudioCache();
  player.play('note$n.wav');
}

Expanded sounds({Color color, int soundnumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(soundnumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              sounds(color: Colors.red, soundnumber: 1),
              sounds(color: Colors.orange, soundnumber: 2),
              sounds(color: Colors.yellow, soundnumber: 3),
              sounds(color: Colors.green, soundnumber: 4),
              sounds(color: Colors.teal, soundnumber: 5),
              sounds(color: Colors.blue, soundnumber: 6),
              sounds(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
