import 'package:flutter/material.dart';
import 'package:flutter_gettingrequest/Screens/Bottom_navigator.dart';
import 'package:flutter_gettingrequest/Screens/Profile_Screen.dart';

import 'Screens/Explore_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottom_navigator(),
    );
  }
}

