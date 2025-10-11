import 'package:flutter/material.dart';

class Step2Overflow extends StatelessWidget {
  final List<String> items = List.generate(60, (i) => 'Пункт');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Переполнение списка')),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((s) => ListTile(title: Text(s))).toList(),
        ),
      ),
    );
  }
}
