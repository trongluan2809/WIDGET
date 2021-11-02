import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerDemo extends StatefulWidget {
  @override
  _DividerDemo createState() => _DividerDemo();
}

class _DividerDemo extends State<DividerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
      ),
      body: _horizontalDivider(),
    );
  }

  Widget _horizontalDivider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          color: Colors.blue,
        ),
        Divider(
          height: 90,
          indent: 20,
          endIndent: 20,
          color: Colors.red,
          thickness: 1,
        ),
        Container(
          height: 40,
          width: 40,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget _verticalDivider() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 40,
        height: 40,
        color: Colors.blue,
      ),
      VerticalDivider(
        width: 40,
        indent: 20,
        endIndent: 20,
        color: Colors.black,
        thickness: 20,
      ),
      Container(
        height: 40,
        width: 40,
        color: Colors.green,
      )
    ]);
  }
}
