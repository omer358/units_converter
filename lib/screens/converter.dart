import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Converter"),
        ),
        body: const Center(
          child: Text("Hello"),
        ),
    );
  }
}
