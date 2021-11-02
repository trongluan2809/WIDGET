import 'package:flutter/material.dart';

class ReorderableListViewWg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ReorderableListViewWgState();
}

class _ReorderableListViewWgState extends State<ReorderableListViewWg> {
  // Dummy data
  List<String> _product =
      List.generate(50, (index) => "Product ${index.toString()}");

  List<String> _todos = ['Task A', 'Task B', 'Task C', 'Task D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'ReorderableListView',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body:
          // _buildProductList(),
          _buildProductListSmall(),
    );
  }

  Widget _buildProductList() {
    return ReorderableListView.builder(
      itemCount: _product.length,
      itemBuilder: (context, index) {
        final String productName = _product[index];
        return Card(
          key: ValueKey(productName),
          color: Colors.amberAccent,
          elevation: 1,
          margin: const EdgeInsets.all(10),
          child: ListTile(
            contentPadding: EdgeInsets.all(25),
            title: Text(
              productName,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            trailing: Icon(
              Icons.drag_handle_sharp,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
        );
      },
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex = newIndex - 1;
          }

          final element = _product.removeAt(oldIndex);
          _product.insert(newIndex, element);
        });
      },
      buildDefaultDragHandles: true,
    );
  }

  Widget _buildProductListSmall() {
    return ReorderableListView(
        header: Container(
            padding: const EdgeInsets.all(25),
            color: Colors.amber,
            child: const Text('My Todo List')),
        children: _todos
            .map((task) => Container(
                  key: ValueKey(task),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(width: 1, color: Colors.green)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(25),
                    leading: Icon(Icons.lock_clock),
                    title: Text(
                      task,
                      style: TextStyle(fontSize: 24),
                    ),
                    trailing: Icon(Icons.drag_handle_outlined),
                  ),
                ))
            .toList(),
        // The reorder function
        onReorder: (oldIndex, newIndex) {
          print('oldIndex: $oldIndex == newIndex: $newIndex');

          setState(() {
            if (newIndex > oldIndex) {
              newIndex = newIndex - 1;
            }
            print('newIndex: $newIndex');
            final element = _todos.removeAt(oldIndex);
            _todos.insert(newIndex, element);

            print('List => $_todos');
          });
        });
  }
}
