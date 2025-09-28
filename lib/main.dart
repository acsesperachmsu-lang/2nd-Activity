import 'package:flutter/material.dart';
import 'screens/activity_screen.dart';

void main() {
  runApp(const SecondActivityApp());
}

class SecondActivityApp extends StatelessWidget {
  const SecondActivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Layout Activity',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const ActivityScreen(),
    );
  }
}
