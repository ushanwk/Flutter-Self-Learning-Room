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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Text Field App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
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
        title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
        toolbarHeight: 70,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                // onChanged: (text){
                //   print(text);
                // },
                // onSubmitted: (text){
                //   print(text);
                // },
                maxLength: 8,
                obscureText: false,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                maxLength: 8,
                obscureText: false,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20),
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.green,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
