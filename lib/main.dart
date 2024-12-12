import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const GlitchVoxApp());
}

class GlitchVoxApp extends StatelessWidget {
  const GlitchVoxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GLITCHvox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
