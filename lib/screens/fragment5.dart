import 'package:flutter/material.dart';

class Fragment5 extends StatefulWidget {
  @override
  State<Fragment5> createState() => _Fragment5State();
}

class _Fragment5State extends State<Fragment5> {
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
      appBar: AppBar(title: const Text('Фрагмент 5: ListView.custom')),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          List.generate(items.length, (i) {
            return ListTile(
              title: Text(items[i]),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
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

/*class StatefulItemWithKey extends StatefulWidget {
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
}*/
