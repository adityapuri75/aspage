import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';

import 'game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'ASPAGE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text('ASPAGE'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("PLAY"),
            onPressed: game,
            color: Colors.yellow,

          ),
        ),
      ),
    );
  }
}