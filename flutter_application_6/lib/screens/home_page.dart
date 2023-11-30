import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Navigation',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_){
            return SecondScreen("Ushan");
          }));
          // Navigator.of(context).pushNamed('/second');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}