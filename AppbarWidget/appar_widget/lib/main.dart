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
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('MY APPBAR'),
          centerTitle: true,
          actions: [Icon(Icons.search), Icon(Icons.find_in_page)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              child: Column(
                children: [Icon(Icons.alarm_add)],
              ),
            ),
          ),
          flexibleSpace: Container(
            child: Text('Flexible space'),
          ),
        ),
      ),
    );
  }
}
