import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView + ListTile Demo"),
      ),
      //_buildListTile(1)
      body: Container(
        alignment: Alignment.center,
        child: Container(
          // width: 100,
          // height: 50,
          constraints: BoxConstraints(maxWidth: 100, maxHeight: 100),
          // color: Colors.red,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(width: 5, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            // shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}
