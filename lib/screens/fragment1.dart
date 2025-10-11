import 'package:flutter/material.dart';

class Fragment1 extends StatefulWidget {
  @override
  State<Fragment1> createState() => _Fragment1State();
}

class _Fragment1State extends State<Fragment1> {
  int counter = 3;
  final List<String> items = ['Вкусно и Точка', 'БургерКинг', 'Шоколадница'];

  void _addItem() {
    setState(() {
      counter++;
      items.add('Новое кафе № $counter');
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
      appBar: AppBar(title: const Text('Фрагмент 1: Column. Кафе')),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(items.length, (i) {
            return ListTile(
              title: Text(items[i]),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.grey),
                onPressed: () => _removeItem(i),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _addItem,
      ),
    );
  }
}
