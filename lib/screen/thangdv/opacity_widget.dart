import 'package:flutter/material.dart';

class OpacityWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: 1,
            child: Container(
              width: double.infinity,
              height: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Opacity = 1'),
            )
          ),
          Opacity(
              opacity: 0.6,
              child: Container(
                width: double.infinity,
                height: 150,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Opacity = 0.6'),
              )
          ),
          Opacity(
              opacity: 0.3,
              child: Container(
                width: double.infinity,
                height: 150,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Opacity = 0.3'),
              )
          ),
          Opacity(
              opacity: 0.5,
              child: Container(
                width: double.infinity,
                height: 150,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text('Opacity = 0', style: TextStyle(color: Colors.red),),
              )
          )
        ]
      ),
    );
  }
}