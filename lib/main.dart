import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Audio(),
    );
  }
}

class Audio extends StatefulWidget {
  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  void playSound(int num) {
    final player = new AudioCache();
    player.play('note$num.wav');
  }

  Container createButton(Color color, int num) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("audio player"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createButton(Colors.red, 1),
              createButton(Colors.blue, 2),
              createButton(Colors.yellow, 3),
              createButton(Colors.green, 4),
              createButton(Colors.grey, 5),
              createButton(Colors.orange, 6),
              createButton(Colors.black, 7),
            ],
          ),
        ),
      ),
    );
  }
}
