import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

    Widget buildkey(int number) {
    return Expanded(
      child: Container(
        color: Colors.green,
        child: TextButton(
          onPressed: () {
            AudioCache audioCache = AudioCache();
            audioCache.play("audios/note$number.wav");
            },
          child: Text("Click!!"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xilophone"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildkey(1),
          buildkey(2),
          buildkey(3),
          buildkey(4),
          buildkey(5),
          buildkey(6),
          buildkey(7),
        ],
      ),
    );
  }
}
