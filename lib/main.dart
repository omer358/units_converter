import 'package:flutter/material.dart';
import 'package:units_converter/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Units converter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Splash(),
    ),
  );
}
