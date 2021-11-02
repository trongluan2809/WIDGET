import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageAnimations extends StatefulWidget {

  @override
  State createState() {
    return _PackageAnimations();
  }
}
class _PackageAnimations extends State<PackageAnimations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: SafeArea(
        child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: OpenContainer(
              openColor: Colors.red,
              openElevation: 1.0,
              transitionType: ContainerTransitionType.fade,
              openBuilder: (context, action) {
                return Text('open builder');
              },
              closedBuilder: (context, action) {
                return Text('close builder');
              },

            ),
          ),
        ),
      ),
    );
  }
}