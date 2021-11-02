import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InheritedWidgetSample extends StatefulWidget {

  @override
  _InheritedWidgetSampleState createState() => _InheritedWidgetSampleState();
}

class _InheritedWidgetSampleState extends State<InheritedWidgetSample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SubInheritedWidget(
        color: Colors.red,
        child: WidgetChildFirst(),
      ),
    );
  }
}

class SubInheritedWidget extends InheritedWidget {
  const SubInheritedWidget({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  static SubInheritedWidget of(BuildContext context) {
    final SubInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<SubInheritedWidget>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(SubInheritedWidget old) => color != old.color;
}

class WidgetChildFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: SubInheritedWidget.of(context).color,
    );
  }
}

class WidgetChildSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
