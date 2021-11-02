import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
abstract class BaseStateless extends StatelessWidget {
  String widgetName = "";

  Widget createBody(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetName),
      ),
      body: createBody(context),
    );
  }
}
