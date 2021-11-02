import 'dart:math';

import 'package:flutter/cupertino.dart';

class LimitedBoxSample extends StatefulWidget {

  @override
  _LimitedBoxSampleState createState() => _LimitedBoxSampleState();
}

class _LimitedBoxSampleState extends State<LimitedBoxSample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return LimitedBox(
              maxHeight: 100,
              child: Container(
                height: 120,
                child: Text('minhnv'),
                color: UniqueColorGenerator.getColor(),
              ),
            );
          }
      ),
    );
  }
}
class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
