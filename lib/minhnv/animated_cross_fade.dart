import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeSample extends StatefulWidget {
  @override
  _AnimatedCrossFadeSampleState createState() =>
      _AnimatedCrossFadeSampleState();
}

class _AnimatedCrossFadeSampleState extends State<AnimatedCrossFadeSample> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: _firstWidget(),
                secondChild: _secondWidget(),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _first = !_first;
                    });
                  },
                  child: Text("Change"))
            ],
          ),
        ),
      ),
    );
  }

  Container _firstWidget() => Container(
    color: Colors.red,
    height: 500,
        child: Text("Before Change"),
      );

  Container _secondWidget() => Container(
    color: Colors.green,
    height: 200,
        child: Text("After Change"),
      );
}
