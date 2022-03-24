import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Units converter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Home(),
    ),
  );
}
