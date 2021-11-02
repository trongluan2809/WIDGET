import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioSample extends StatefulWidget {

  @override
  _AspectRatioSampleState createState() => _AspectRatioSampleState();
}

class _AspectRatioSampleState extends State<AspectRatioSample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
