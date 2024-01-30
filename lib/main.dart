import 'package:flutter/material.dart';

import 'SCREENS/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      home: Home_Screen(),
    );
  }
}

