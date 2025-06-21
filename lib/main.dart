import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void play(int audioNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$audioNumber.wav'));
  }

  Expanded buildkey(int audioNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(audioNumber);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.black54,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.teal),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
