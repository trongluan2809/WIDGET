import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractiveViewerDemo extends StatefulWidget {
  @override
  _InteractiveViewer createState() => _InteractiveViewer();
}

class _InteractiveViewer extends State<InteractiveViewerDemo> {
  String asset = 'assets/tiger.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer'),
      ),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: InteractiveViewer(
          minScale: 0.2,
          boundaryMargin: EdgeInsets.all(20),
          maxScale: 20.0,
          //clipBehavior: Clip.none,
          //constrained: true,
          //alignPanAxis: true,
          // panEnabled: false,
          //scaleEnabled: false,
          child: Image.asset(asset),
        ),
      )),
    );
  }
}
