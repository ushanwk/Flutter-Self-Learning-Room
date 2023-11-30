import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/home_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Second Screen', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context, MyHomePage(title: 'My Home Page'));
          },
          icon: Icon(Icons.home, color: Colors.white,),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Second Screen',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
