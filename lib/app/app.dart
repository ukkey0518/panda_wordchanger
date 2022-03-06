// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:panda_wordchanger/app/app_flavor.dart';
import 'package:panda_wordchanger/app/views/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'panda-wordchanger-${AppFlavor.mode.name}',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
