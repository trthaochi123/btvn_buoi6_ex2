import 'package:btvn_buoi6_02/change_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Change App',
      theme: ThemeData.light(),
      home: Scaffold(
        body: ChangeColorBtn(),
      ),
    );
  }
}

