import 'package:flutter/material.dart';
import 'package:foodie/screen/unboarding/intro_slider_screen.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroScreenDefault()
    );
  }
}
