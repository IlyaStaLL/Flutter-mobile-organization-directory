import 'package:flutter/material.dart';

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

class _Step4NaiveDeleteState extends State<Step4NaiveDelete> {
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
}
