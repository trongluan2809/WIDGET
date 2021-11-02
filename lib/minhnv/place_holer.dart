import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceHolderSample extends StatefulWidget {

  @override
  _PlaceHolderSampleState createState() => _PlaceHolderSampleState();
}

class _PlaceHolderSampleState extends State<PlaceHolderSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("place holder"),
      ),
      body: Container(
      color: Colors.white,
      child: Column(
        children: [
          Placeholder(
            color: Colors.grey
          ),
        ],
      ),
    ),
    );
  }
}
