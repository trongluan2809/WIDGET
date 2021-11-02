import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpacerSample extends StatefulWidget {
  @override
  _SpacerSampleState createState() => _SpacerSampleState();
}

class _SpacerSampleState extends State<SpacerSample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text("1"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text("2"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Text("3"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
