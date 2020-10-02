import 'package:flutter/material.dart';

import 'game.dart';

class Home extends StatelessWidget {
  String id;
  Home({this.id});
  int coins = 0;
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