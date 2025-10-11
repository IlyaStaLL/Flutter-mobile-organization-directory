import 'package:flutter/material.dart';

class Fragment1 extends StatelessWidget {
  final List<String> items = [
    'Пункт 1',
    'Пункт 2',
    'Пункт 3',
    'Пункт 4',
    'Пункт 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map((s) => Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            s,
            style: TextStyle(fontSize: 18),
          ),
        ))
            .toList(),
      ),
    );
  }
}
