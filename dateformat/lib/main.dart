import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DateFormat'),
        ),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_EEEE().format(DateTime.now()),
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
