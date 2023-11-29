import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  int count = 0;

  void increment(){
    count++;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Text('My Sample App', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pressed the button', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text('$count', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 65),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: increment,
        child: Icon(Icons.add, color: Colors.white, size: 40,),
      ),
    );
  }
}

