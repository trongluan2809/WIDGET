import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedIconSample extends StatefulWidget {
  @override
  _AnimatedIconSampleState createState() => _AnimatedIconSampleState();
}

class _AnimatedIconSampleState extends State<AnimatedIconSample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(child: AnimatedIcon(icon: AnimatedIcons.add_event, progress: _controller))
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _controller.forward();
                },
                child: Text("forward"),
              ),
              ElevatedButton(
                  onPressed: () {
                    _controller.reset();
                  },
                  child: Text("reset"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
