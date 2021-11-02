import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgressIndicatorDemo extends StatefulWidget {
  @override
  _CircularProgressIndicator createState() => _CircularProgressIndicator();
}

class _CircularProgressIndicator extends State<CircularProgressIndicatorDemo> {

  @override
  Widget build(BuildContext context) {

    // Future.delayed(Duration(seconds: 5));
    // setState(() {
    //   circularProgressIndicator();
    // });
    return Scaffold(
      appBar: AppBar(
        title: Text("CircularProgressIndicator "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          circularProgressIndicator(),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: linearProgressIndicator(),
          )
        ],
      ),
    );
  }

  Widget circularProgressIndicator() {
    return CircularProgressIndicator(
      strokeWidth: 2,
      backgroundColor: Colors.yellow,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
      // value: 1,
    );
  }

  Widget linearProgressIndicator() {
    return LinearProgressIndicator(
      backgroundColor: Colors.yellow,
      minHeight: 1,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
