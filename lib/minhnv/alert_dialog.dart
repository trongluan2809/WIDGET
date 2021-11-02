import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPlatform extends StatefulWidget {
  @override
  _AlertDialogPlatformState createState() => _AlertDialogPlatformState();
}

class _AlertDialogPlatformState extends State<AlertDialogPlatform> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: triggerShowAlertDialog,
                  child: Text("show alert dialog"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void triggerShowAlertDialog() {
    final AlertDialog dialog = AlertDialog(
      title: Text('Reset settings?'),
      content:
          Text('This will reset your device to its default factory settings.'),

      actions: [
        TextButton(
          onPressed: () {},
          child: Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('ACCEPT'),
        ),
      ],
    );
    final CupertinoAlertDialog cupertinoAlertDialog = CupertinoAlertDialog(
      title: Text("Reset settings?"),
      content:
          Text('This will reset your device to its default factory settings.'),
      actions: [
        CupertinoDialogAction(
          child: Text("Delete",style: TextStyle(color: Colors.red),),
          onPressed: (){ Navigator.pop(context);},),
        CupertinoDialogAction(child: Text("Yes"),),
      ],
    );
    if (Platform.isAndroid) {
      showDialog(context: context, builder: (context) => dialog);
    } else {
      showDialog(context: context, builder: (context) => cupertinoAlertDialog);
    }
  }
}
