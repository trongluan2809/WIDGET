import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuilderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Builder"),
        ),
        body: _center()
    );
  }
  Widget _center() {
    return Center(
      child: Builder(
        builder: (context) =>
            FlatButton(
              child: Text('Show Snackbar'),
              onPressed: () {
                final snackBar = SnackBar(
                    content: Text('snackBar is show'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
            ),
      ),
    );
  }
}