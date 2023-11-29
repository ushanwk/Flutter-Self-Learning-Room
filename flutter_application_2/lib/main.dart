import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text(
            "My App Bar",
            style: (TextStyle(color: Colors.white)),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ],
          flexibleSpace: Image.asset(
            "assest/bg.jpeg",
            fit: BoxFit.cover,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                  color: Colors.white,
                ),
              ),
              Tab(
                  icon: Icon(
                Icons.directions_transit,
                color: Colors.white,
              )),
              Tab(
                  icon: Icon(
                Icons.directions_bike,
                color: Colors.white,
              )),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
          ],
        ),
      ),
    );
  }

  Widget tab1() {
    return const Center(
      child: Text(
        'Hello Car',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }

  Widget tab2() {
    return const Center(
      child: Text(
        'Hello Train',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }

  Widget tab3() {
    return const Center(
      child: Text(
        'Hello Bicycle',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }
}
