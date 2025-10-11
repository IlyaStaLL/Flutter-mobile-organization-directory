import 'package:flutter/material.dart';

class StatefulItemWithKey extends StatefulWidget {
  final String title;
  StatefulItemWithKey({required this.title, Key? key}) : super(key: key);
  @override
  State<StatefulItemWithKey> createState() => _StatefulItemWithKeyState();
}

class _StatefulItemWithKeyState extends State<StatefulItemWithKey> {
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

class Step5WithKeys extends StatefulWidget {
  @override
  State<Step5WithKeys> createState() => _Step5WithKeysState();
}

class _Step5WithKeysState extends State<Step5WithKeys> {
  final List<Map<String, dynamic>> items = List.generate(8, (i) => {'id': i + 1, 'title': 'Элемент ${i + 1}'});

  void removeById(int id) {
    setState(() => items.removeWhere((it) => it['id'] == id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delete with Keys')),
      body: ListView(
        children: items.map((it) {
          int id = it['id'];
          String title = it['title'];
          return Row(
            children: [
              Expanded(child: StatefulItemWithKey(key: ValueKey(id), title: title)),
              IconButton(icon: Icon(Icons.delete), onPressed: () => removeById(id)),
            ],
          );
        }).toList(),
      ),
    );
  }
}
