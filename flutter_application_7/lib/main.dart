import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
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
        title: Text(
          'Flutter Demo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.access_alarm, size: 40,),
            title: Text('Alarm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            subtitle: Text('Set your Alarm'),
            trailing: Icon(Icons.menu),
          ),
        ],
      )
    );
  }
}

