import 'package:flutter/cupertino.dart';

import 'screens/home_screen/page/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

