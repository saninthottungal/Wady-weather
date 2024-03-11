import 'package:flutter/material.dart';
import 'package:wady/Screens/ScreenHome/ScreenHome.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          canvasColor: const Color.fromARGB(255, 23, 25, 31),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: const ScreenHome(),
    );
  }
}
