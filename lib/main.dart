import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        // appBar: AppBar(
        //   title: Text('Xylophone'),
        // ),
        body: SafeArea(
          child: XYlophone(),
        ),
      ),
    );
  }
}

class XYlophone extends StatefulWidget {
  @override
  State<XYlophone> createState() => _XYlophoneState();
}

class _XYlophoneState extends State<XYlophone> {
  late AudioPlayer player;

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () async {
                  await player.setAsset('assets/note1.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () async {
                  await player.setAsset('assets/note2.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () async {
                  await player.setAsset('assets/note3.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () async {
                  await player.setAsset('assets/note4.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () async {
                  await player.setAsset('assets/note5.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
                onPressed: () async {
                  await player.setAsset('assets/note6.wav');
                  player.play();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Text(' '),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 139, 0, 253))),
                onPressed: () async {
                  await player.setAsset('assets/note7.wav');
                  player.play();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
