import 'package:flutter/material.dart';

class AnimatedPaddingWg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedPaddingWg();
}

class _AnimatedPaddingWg extends State<AnimatedPaddingWg> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
      ),
      body: _buildExample1(),
    );
  }

  Widget _buildExample1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeOutSine,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Padding: $padValue',
          style: TextStyle(fontSize: 25),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
          child: const Text(
            'Change padding',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
