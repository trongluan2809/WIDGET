import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
