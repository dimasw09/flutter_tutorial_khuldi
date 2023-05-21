import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Dimas wahyudi",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Dimas saja",
      "age": 22,
      "favColor": ["White", "Red", "Green"]
    },
    {
      "Name": "Dimas wahyudi",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Dimas saja",
      "age": 22,
      "favColor": ["White", "Red", "Green"]
    },
    {
      "Name": "Dimas wahyudi",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Dimas saja",
      "age": 22,
      "favColor": ["White", "Red", "Green"]
    },
    {
      "Name": "Dimas wahyudi",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Dimas saja",
      "age": 22,
      "favColor": ["White", "Red", "Green"]
    },
    {
      "Name": "Dimas wahyudi",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Dimas saja",
      "age": 22,
      "favColor": ["White", "Red", "Green"]
    },
  ];
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ID Apps'),
        ),
        body: ListView(
          children: myList.map((data) {
            print(data['favColor']);
            List myfavcolor = data['favColor'];
            return Card(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    //row
                    Row(
                      children: [
                        CircleAvatar(),
                        Column(
                          children: [
                            Text('Name : ${data['Name']}'),
                            Text('age : ${data['age']}'),
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 15),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ));
          }).toList(),
        ),
      ),
    );
  }
}
