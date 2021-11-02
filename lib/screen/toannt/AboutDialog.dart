
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutDialogDart extends StatefulWidget {

  @override
  State createState() {
    return _AboutDialogDart();
  }
}
class _AboutDialogDart extends State<AboutDialogDart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutDialog'),

      ),
      body: _ShowAboutDialog(),
    );
  }
}
class _ShowAboutDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showAboutDialog(
                context: context,
              applicationIcon: FlutterLogo(),
              applicationName: 'widget of the week',
              applicationVersion: '1.0.0',
              applicationLegalese: 'legalese information .....',
              children: [
                Container(
                  child: Center(
                    child: Text('widget of the week'),
                  ),
                ),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text('this is my button'),
                    ),
                  ),
                )
              ]
            );
          },
          child: Text('show about dialog'),
        ),
      ),
    );
  }
}