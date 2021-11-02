import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClipPathDemo extends StatefulWidget {
  @override
  _ClipPath createState() => _ClipPath();
}

class _ClipPath extends State<ClipPathDemo> {
  var data = Text("Michi");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

          "ClipPath",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ClipPath(
              clipper: DrawShirt(),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 300,
                      width: 300,
                      // width: 300,
                      decoration: BoxDecoration(color: Colors.yellow)),
                  ClipPath(
                    clipper: DrawStar(),
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.red,
                    ),
                  )
                ],
              )),
          ClipPath(
            clipper: DrawHeart(),
            child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                // width: 300,
                decoration: BoxDecoration(color: Colors.blueAccent)),
          ),
        ],
      ),
    );
  }
}

class DrawHeart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    //path.lineTo(150, size.height/2);
    //path.lineTo(100, 200);
    path.moveTo(150, 60);
    // path.lineTo(0, 150);
    // path.lineTo(100, 250);

    var control = Offset(0, size.height);
    // var enpoit = Offset(size.height / 2, size.height);
    path.cubicTo(100, 0, 50, 50, 150, 300);
    path.cubicTo(250, 50, 200, 0, 150, 60);

    //path.quadraticBezierTo(control.dx, control.dy, 40, 40);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class DrawShirt extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(100, 0);
    path.lineTo(0, 70);
    path.lineTo(30, 130);
    path.lineTo(70, 115);
    path.lineTo(70, 300);

    path.lineTo(230, 300);
    path.lineTo(230, 115);
    path.lineTo(270, 130);
    path.lineTo(300, 70);
    path.lineTo(200, 0);
    path.lineTo(150, 30);
    path.lineTo(100, 0);
    path.cubicTo(100, 0, 150, 18, 200, 0);

    //test
    //path.quadraticBezierTo(70, 300, 200, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class DrawJeans extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(70, 0);
    path.lineTo(30, 300);
    path.lineTo(100, 300);
    path.lineTo(150, 60);
    path.lineTo(200, 300);
    path.lineTo(270, 300);
    path.lineTo(230, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class DrawStar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(60, 0);
    path.lineTo(40, 30);
    path.lineTo(0, 30);
    path.lineTo(30, 60);
    path.lineTo(20, 120);
    path.lineTo(60, 90);
    path.lineTo(100, 120);

    path.lineTo(90, 60);
    path.lineTo(120, 30);
    path.lineTo(80, 30);
    path.lineTo(60, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
