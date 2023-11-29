import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "First App",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            "Hello Ushan",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
