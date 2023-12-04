import 'package:flutter/material.dart';

class Form_Screen extends StatefulWidget {
  const Form_Screen({super.key});

  @override
  State<Form_Screen> createState() => _Form_ScreenState();
}

class _Form_ScreenState extends State<Form_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: (const Text(
          'Form Training',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: const Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
