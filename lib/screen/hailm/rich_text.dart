import 'package:flutter/material.dart';

class RichTextWg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'RichText',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildFlutter();
    // _buildGoogle();
    // _buildFlutter2();
  }
}

Widget _buildGoogle() {
  return Center(
    child: RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
            text: "G",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            )),
        TextSpan(
            text: "o",
            style: TextStyle(
                color: Colors.red,
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: "Sunshiney")),
        TextSpan(
            text: "o",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: "Sunshiney")),
        TextSpan(
            text: "g",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            )),
        TextSpan(
            text: "l",
            style: TextStyle(
                color: Colors.green,
                fontSize: 60,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "e",
            style: TextStyle(
                color: Colors.red, fontSize: 60, fontWeight: FontWeight.bold)),
      ]),
    ),
  );
}

Widget _buildFlutter() {
  return Container(
    child: RichText(
      // textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      textWidthBasis: TextWidthBasis.longestLine,
      text: TextSpan(
        text: 'This is ',
        // style: DefaultTextStyle.of(context).style,
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: const <TextSpan>[
          TextSpan(
            text: "RichText ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
          ),
          TextSpan(
            text: "NoNoNo HIHIHIHI",
            style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildFlutter2() {
  return Stack(
    children: <Widget>[_buildHFlutter(), _buildVFlutter()],
  );
}

Widget _buildHFlutter() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: " F ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[900])),
        ),
        RichText(
          text: TextSpan(
              text: " l ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[800])),
        ),
        RichText(
          text: TextSpan(
              text: " u ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[700])),
        ),
        RichText(
          text: TextSpan(
              text: " t ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[600])),
        ),
        RichText(
          text: TextSpan(
              text: " t ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[700])),
        ),
        RichText(
          text: TextSpan(
              text: " e ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[800])),
        ),
        RichText(
          text: TextSpan(
              text: " r ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[900])),
        ),
      ],
    ),
  );
}

Widget _buildVFlutter() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: " F ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[900])),
        ),
        RichText(
          text: TextSpan(
              text: " l ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[800])),
        ),
        RichText(
          text: TextSpan(
              text: " u ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[700])),
        ),
        RichText(
          text: TextSpan(
              text: " t ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[600])),
        ),
        RichText(
          text: TextSpan(
              text: " t ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[700])),
        ),
        RichText(
          text: TextSpan(
              text: " e ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[800])),
        ),
        RichText(
          text: TextSpan(
              text: " r ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue[900])),
        ),
      ],
    ),
  );
}
