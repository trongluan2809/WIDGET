import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_of_the_week/base_stless.dart';

class ClipOvalWidget extends BaseStateless {
  @override
  Widget createBody(BuildContext context) {
    return Center(
      child: ClipOval(
        clipper: MyClipper(),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
