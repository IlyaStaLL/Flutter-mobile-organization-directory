import 'package:flutter/material.dart';

class ListViewChildrenScreen extends StatelessWidget {
  final List<String> items = List.generate(20, (i) => 'Пункт ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView (children)')),
      body: ListView(
        children: items.map((s) => ListTile(title: Text(s))).toList(),
      ),
    );
  }
}

class ListViewBuilderScreen extends StatelessWidget {
  final List<String> items = List.generate(100, (i) => 'Пункт ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.builder')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(title: Text(items[index])),
      ),
    );
  }
}

class ListViewSeparatedScreen extends StatelessWidget {
  final List<String> items = List.generate(20, (i) => 'Пункт ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.separated')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) => ListTile(title: Text(items[index])),
      ),
    );
  }
}

class ListViewCustomScreen extends StatelessWidget {
  final List<String> items = List.generate(10, (i) => 'Пункт ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.custom')),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          items.map((s) => ListTile(title: Text(s))).toList(),
        ),
      ),
    );
  }
}
