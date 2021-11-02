import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPageSnackBar();
  }
}

class _MyPageSnackBar extends State<SnackBarScreen>
    with TickerProviderStateMixin {
  final _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
            onPressed: () => _showSnackBar(context),
            child: Text('Show SnackBar'),
          ),
        );
      }),
    );
  }

  _showSnackBar(BuildContext context) {
    AnimationController controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    SnackBar snackBar = SnackBar(
      content: Text('Demo show SnackBar'),
      // duration: Duration(seconds: 10),
      // backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      elevation: 20,
      // margin: EdgeInsets.all(10),
      // width: 200,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.green,
          width: 2,
        ),
      ),
      animation: CurvedAnimation(parent: controller, curve: Curves.easeInOutSine),
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.pink,
        onPressed: () {},
      ),
    );
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(snackBar);
    // _globalKey.currentState!.showSnackBar(snackBar);
  }
}
