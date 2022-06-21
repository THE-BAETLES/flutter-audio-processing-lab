import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer player1;
  late AudioPlayer player2;

  @override
  void initState() {
    super.initState();
    player1 = AudioPlayer();
    player2 = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await player1.setAsset('assets/audio/changmo-beautiful.mp3');
                  player1.play();
                },
                child: Text('아름다워'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await player2.setAsset('assets/audio/bignaughty-jung.mp3');
                  player2.play();
                },
                child: Text('정이라고 하자'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player1.dispose();
    player2.dispose();
    super.dispose();
  }
}