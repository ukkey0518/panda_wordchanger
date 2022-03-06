import 'package:flutter/material.dart';
import 'package:panda_wordchanger/app/app.dart';
import 'package:panda_wordchanger/app/app_flavor.dart';

void main() {
  AppFlavor.mode = AppFlavorMode.dev;
  runApp(const App());
}
