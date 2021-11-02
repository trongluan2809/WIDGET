import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PackageSlidable extends StatefulWidget {

  @override
  State createState() {
    return _PackageSlidable();
  }
}
class _PackageSlidable extends State<PackageSlidable> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slidable'),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) {
          return Slidable(
            actionExtentRatio: 1/5,
              child: ListTile(

                title: Center(
                  child: Text('item $index'),
                )
              ),
              actionPane: SlidableScrollActionPane(
                
              ),
              actions: [
                IconSlideAction(
                  caption: 'delete',
                  icon: Icons.delete,
                  color: Colors.blue,
                  onTap: () => print('delete'),
          ),
                IconSlideAction(
                  caption: 'print',
                  icon: Icons.print,
                  color: Colors.blue,
                  onTap: () => print('print'),
                  closeOnTap: false,
                ),
                IconSlideAction(
                  caption: 'event',
                  icon: Icons.event,
                  color: Colors.blue,
                  onTap: () => print('event'),
                ),
                IconSlideAction(
                  caption: 'edit',
                  icon: Icons.edit,
                  color: Colors.blue,
                  onTap: () => print('edit'),
                ),
                IconSlideAction(
                  caption: 'add',
                  icon: Icons.add,
                  color: Colors.blue,
                  onTap: () => print('add'),
                )
            ],
            secondaryActions: [
              IconSlideAction(
                caption: 'delete',
                icon: Icons.delete,
                color: Colors.blue,
                onTap: () => print('delete'),
              ),
              IconSlideAction(
                caption: 'print',
                icon: Icons.print,
                color: Colors.blue,
                onTap: () => print('print'),
                closeOnTap: false,
              ),
              IconSlideAction(
                caption: 'event',
                icon: Icons.event,
                color: Colors.blue,
                onTap: () => print('event'),
              ),
              IconSlideAction(
                caption: 'edit',
                icon: Icons.edit,
                color: Colors.blue,
                onTap: () => print('edit'),
              ),
              IconSlideAction(
                caption: 'add',
                icon: Icons.add,
                color: Colors.blue,
                onTap: () => print('add'),
              )
            ],
          );
          })
    );
  }
}