import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widget_of_the_week/base_stless.dart';

class CupertinoActivityIndicatorWidget extends BaseStateless {
  @override
  Widget createBody(BuildContext context) {
    return FutureBuilder(
        future: _cubed(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            int value = int.parse(snapshot.data.toString());
            return Center(
              child: Text("OK chưa $value"),
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        });
  }

  Future<int> _cubed() {
    return Future.delayed(Duration(seconds: 3), () => 3);
  }
}
