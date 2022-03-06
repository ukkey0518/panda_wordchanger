// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:panda_wordchanger/app/app_flavor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Hello ${AppFlavor.mode}',
        ),
      ),
    );
  }
}
