// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:panda_wordchanger/app/app.dart';
import 'package:panda_wordchanger/app/app_flavor.dart';

void main() {
  AppFlavor.mode = AppFlavorMode.prd;
  runApp(const App());
}
