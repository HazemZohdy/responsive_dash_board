import 'package:flutter/material.dart';

class SizeConfig {
  static const double tablet = 800;
  static const double disktop = 1200;

  static late double width, height;
  static init(context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;

  }
}
