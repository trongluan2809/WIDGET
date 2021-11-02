import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView + ListTile Demo"),
      ),
      //_buildListTile(1)
      body: _buildListViewNormal(),
    );
  }

  ListView _buildListViewNormal() {
    return ListView(
      children: List.generate(50, (index) => index + 1).map((e) {
        return _buildListTile("Normal", e);
      }).toList(),
      // scrollDirection: Axis.horizontal,
      // physics: NeverScrollableScrollPhysics(),
    );
  }

  ListView _buildListViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return _buildListTile("Builder", index);
      },
      
    );
  }

  ListView _buildListViewSeperated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return _buildListTile("Seperated", index);
      }, 
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 5,
          color: Colors.red,
        );
      },  
      itemCount: 20
    );
  }

  ListTile _buildListTile(String name ,int e) {
    return ListTile(
      leading: Icon(Icons.label),
      title: Text('Demo ListView $name $e'),
      // title: Padding(
      //   child: Text('Tham gia cuộc thi tháng $e'),
      //   // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      // ),
    );
  }

  ListTile _buildMyListTile() {
    return ListTile(  
      leading: Container(color: Colors.red,),
      title: Container(color: Colors.green),
      trailing: Container(color: Colors.blue),
    );
  }
}
