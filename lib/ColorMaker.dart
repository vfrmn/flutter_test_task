import 'dart:math';

import 'package:flutter/material.dart';

class ColorMaker {
  final Random _random = Random();

  Color getRandomColor() {
    return Color(_random.nextInt(0xffffffff));
  }
}
