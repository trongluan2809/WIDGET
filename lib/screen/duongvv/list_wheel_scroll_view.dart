import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListWheelScrollViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListWheelScrollView(
          itemExtent: 100,
          // offAxisFraction: 0.5,
          // useMagnifier: true,
          // magnification: 1.1,
          // diameterRatio: 20,
          // overAndUnderCenterOpacity: 0.5,
          // squeeze: 2,
          children: [
            itemListWheel(context, 'Item 1'),
            itemListWheel(context, 'Item 2'),
            itemListWheel(context, 'Item 3'),
            itemListWheel(context, 'Item 4'),
            itemListWheel(context, 'Item 5'),
            itemListWheel(context, 'Item 6'),
            itemListWheel(context, 'Item 7'),
            itemListWheel(context, 'Item 8'),
            itemListWheel(context, 'Item 9'),
            itemListWheel(context, 'Item 10'),
            itemListWheel(context, 'Item 11'),
            itemListWheel(context, 'Item 12'),
            itemListWheel(context, 'Item 13'),
            itemListWheel(context, 'Item 14'),
            itemListWheel(context, 'Item 15'),
            itemListWheel(context, 'Item 16'),
            itemListWheel(context, 'Item 17'),
            itemListWheel(context, 'Item 18'),
            itemListWheel(context, 'Item 19'),
            itemListWheel(context, 'Item 20'),
          ],
        ),
      ),
    );
  }

  Padding itemListWheel(BuildContext context, String content) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.black26,
        alignment: Alignment.center,
        child: Text(
          content,
          style: TextStyle(
              fontSize: 28, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
