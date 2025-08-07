import 'package:flutter/material.dart';

import 'start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      home: Scaffold(
        body: const StartScreen(),
      ),
    );
  }
}