import 'package:flutter/material.dart';
import 'package:geek_house_apk/screen/inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Inscription(),
      debugShowCheckedModeBanner: false,
    );
  }
}

