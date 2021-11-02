import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotatedBoxDart extends StatefulWidget {

  @override
  State createState() {
    return _RotatedBoxDart();
  }
}
class _RotatedBoxDart extends State<RotatedBoxDart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: -3,
          child: Image.asset('assets/corgi.jpg'),
        ),
      ),
    );
  }
}