import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorFilterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorFilterState();
}

class _ColorFilterState extends State<ColorFilterWidget> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image & ColorFiltered'),
      ),
      body: _buildExample1(),
    );
  }

  Widget _buildExample1() {
    return Column(
      children: [
        Expanded(
            child: Center(
          child: Image.asset(
            './assets/corgi.jpg',
            // width: 400,
            // height: 200,
            // fit: BoxFit.fill,
            // color: Colors.red,
            // colorBlendMode: BlendMode.colorBurn,
            semanticLabel: 'corgi',
          ),
        )),
        // Expanded(
        //     child: Center(
        //   child: Image.network(
        //     'https://avatars.githubusercontent.com/u/583231?v=4',
        //     loadingBuilder: (context, child, progress) {
        //       return progress == null ? child : CupertinoActivityIndicator();
        //     },
        //   ),
        // )),
        // Expanded(
        //     child: Center(
        //   child: ColorFiltered(
        //     child: Image.asset(
        //       './assets/corgi.jpg',
        //       semanticLabel: 'corgi',
        //     ),
        //     colorFilter: ColorFilter.mode(Colors.green, BlendMode.color),
        //   ),
        // )),
        //Expanded(child: Image.file('')),
        //Expanded(child: Image.memory('')),
      ],
    );
  }
}
