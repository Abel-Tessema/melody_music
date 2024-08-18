import 'package:flutter/material.dart';
import 'package:melody_music/screens/tabs_screen.dart';
import 'screens/now_playing_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: TabsScreen(),
      ),
    );
  }
}
