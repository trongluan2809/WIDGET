import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleWidget extends StatefulWidget {

  @override
  _FlexibleWidgetState createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text("aa"),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              height: 20,
              color: Colors.green,
              child: Text("demo"),
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
