import 'package:flutter/material.dart';

class Fragment2 extends StatefulWidget {
  @override
  State<Fragment2> createState() => _Fragment2State();
}

class _Fragment2State extends State<Fragment2> {
  int counter = 3;
  final List<String> items = ['Кафе 5 звёзд', 'Ресторан 4.5 звёзд', 'Бассейн 3.4 звёзд'];

  void _addItem() {
    setState(() {
      counter++;
      items.add('Новая геоточка № $counter');
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
      appBar: AppBar(title: const Text('Фрагмент 2: ListView')),
      body: ListView(
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _addItem,
      ),
    );
  }
}



/*  @override
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
}*/
