import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SharderMaskDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShaderMask"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                child: Text('LinearGradient'),
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LinearGradientDemo()));
            },),
            FlatButton(
              child: Text('RadialGradient'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RadialGradientDemo()));
              },),
            FlatButton(
              child: Text('SweepGradient'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SweepGradientDemo()));
              },)
          ],
        ),
      ),
    );
  }
}
class LinearGradientDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearGadient'),
      ),
      body: Center(
        child: ShaderMask(
          child:Container(
            child: Image.asset('assets/corgi.jpg'),
          ),

    shaderCallback: (bounds) {
      return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.green,
            Colors.yellow
          ]).createShader(bounds);
    },
    blendMode: BlendMode.colorBurn,
        ),
      ),
    );
  }
}

class RadialGradientDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadialGradient'),
      ),
      body: Center(
        child: ShaderMask(
          child:Container(
            child: Image.asset('assets/corgi.jpg'),
          ),

          shaderCallback: (bounds) {
            return RadialGradient(
              colors: [Colors.red, Colors.black, Colors.yellow],
            ).createShader(bounds);
          },
          blendMode: BlendMode.color,
        ),
      ),
    );
  }
}

class SweepGradientDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SweepGradient'),
      ),
      body: Center(
        child: ShaderMask(
          child:Container(
            child: Image.asset('assets/corgi.jpg'),
          ),

          shaderCallback: (bounds) {
            return SweepGradient(
              startAngle: pi/8,
                endAngle: pi,
                colors: [Colors.red, Colors.green, Colors.yellow, Colors.blue],
            ).createShader(bounds);
          },
          blendMode: BlendMode.color,
        ),
      ),
    );
  }
}