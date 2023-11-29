import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: const Text('My Sample App', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pressed the button', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Text('0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
          ],
        ),
      ),
    );
  }
}

