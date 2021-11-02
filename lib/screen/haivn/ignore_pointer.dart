import 'package:flutter/material.dart';
import 'package:widget_of_the_week/base_stless.dart';

class IgnorePointerWidget extends BaseStateless {
  @override
  Widget createBody(BuildContext context) {
    // TODO: implement createBody
    return IgnorePointerFullWidget();
  }
}

class IgnorePointerFullWidget extends StatefulWidget {
  const IgnorePointerFullWidget({Key? key}) : super(key: key);

  @override
  State<IgnorePointerFullWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerFullWidget> {
  bool ignoring = false;

  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setIgnoring(!ignoring);
                  },
                  child: Text(
                    ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.black26,
              child: IgnorePointer(
                ignoring: ignoring,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Ignoring: $ignoring'),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Click me!'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
