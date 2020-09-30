import 'dart:ui';

import 'package:flutter/material.dart';

import '../flutters-game.dart';
import '../main.dart';
import 'core/gameobject.dart';

class Floor extends GameObject {
  Rect rect;
  Paint paint;

  int colorCode;

  Floor(FluttersGame game, double x, double y, double width, double height,
      int colorCode)
      : super(game) {
    this.colorCode = colorCode;
    rect = Rect.fromLTWH(x, y, width, height);
    paint = Paint();
    paint.color = Color(colorCode);
  }

  @override
  void render(Canvas c) {
    c.drawRect(rect, paint);
    children(){
      RaisedButton(
        onPressed: main,
      );
    }
  }

  @override
  void update(double t) {
    // TODO: implement update
  }
}
