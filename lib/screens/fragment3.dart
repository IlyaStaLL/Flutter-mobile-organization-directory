import 'package:flutter/material.dart';

class Fragment3 extends StatefulWidget {
  @override
  State<Fragment3> createState() => _Fragment3State();
}

class _Fragment3State extends State<Fragment3> {
  int counter = 3;
  final List<String> items = ['Элемент 1', 'Элемент 2', 'Элемент 3'];

  void _addItem() {
    setState(() {
      counter++;
      items.add('Элемент $counter');
    });
  }

  void _removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Фрагмент 3: ListView.separated')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          title: Text(items[i]),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => _removeItem(i),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _addItem,
      ),
    );
  }
}

/*@override
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
}*/
