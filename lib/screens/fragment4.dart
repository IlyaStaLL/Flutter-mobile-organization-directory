import 'package:flutter/material.dart';

class Fragment4 extends StatefulWidget {
  @override
  State<Fragment4> createState() => _Fragment4State();
}

class _Fragment4State extends State<Fragment4> {
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
      appBar: AppBar(title: const Text('Фрагмент 4: ListView.builder')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(items[i]),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.grey),
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

/*
class StatefulItem extends StatefulWidget {
  final String title;
  StatefulItem({required this.title});
  @override
  State<StatefulItem> createState() => _StatefulItemState();
}

class _StatefulItemState extends State<StatefulItem> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: IconButton(
        icon: Icon(active ? Icons.check_box : Icons.check_box_outline_blank),
        onPressed: () => setState(() => active = !active),
      ),
    );
  }
}

class Step4NaiveDelete extends StatefulWidget {
  @override
  State<Step4NaiveDelete> createState() => _Step4NaiveDeleteState();
}
*/

/*class _Step4NaiveDeleteState extends State<Step4NaiveDelete> {
  final List<String> items = List.generate(8, (i) => 'Элемент ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Naive delete (no keys)')),
      body: ListView(
        children: items.asMap().entries.map((entry) {
          int index = entry.key;
          String value = entry.value;
          return Row(
            children: [
              Expanded(child: StatefulItem(title: value)),
              IconButton(icon: Icon(Icons.delete), onPressed: () => setState(() => items.removeAt(index))),
            ],
          );
        }).toList(),
      ),
    );
  }
}*/
