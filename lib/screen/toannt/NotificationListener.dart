
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotificationListener example"),
      ),
      body: NotificationListener<TextNotification>(
          child: Center(
            child: TextValue(),
          ),
        onNotification: (notification) {
            print(notification.text);
            return false;
        }),
    );
  }
}

class TextValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("Get time!"),
      onPressed: () {
        final text = 'da nhan duoc thong bao';
        TextNotification(text: text).dispatch(context);
      },
    );
  }
}
class TextNotification extends Notification {
  final String text;

  const TextNotification({required this.text});
}