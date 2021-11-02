import 'package:flutter/material.dart';

class AnimatedSwitcherWg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedSwitcherWg();
}

class _AnimatedSwitcherWg extends State<AnimatedSwitcherWg> {
  int _count = 0;
  bool _showFirstContainer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AimatedSwitcher'),
      ),
      body:
          // _buildExample1(),
          _buildExample2(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _showFirstContainer = !_showFirstContainer;
            });
          },
          label: Text('Animate')),
    );
  }

  Widget _buildExample2() {
    return Center(
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 1000),
        child: _showFirstContainer
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.blue,
                ),
                key: UniqueKey(),
                height: 150,
                width: 100,
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.red,
                ),
                key: UniqueKey(),
                height: 100,
                width: 150,
              ),
        // transitionBuilder: (widget, animation) => ScaleTransition(
        //   scale: animation,
        //   child: widget,
        // ),

        transitionBuilder: (widget, animation) => RotationTransition(
          turns: animation,
          child: widget,
        ),

        // switchOutCurve: Curves.easeOutExpo,
        // switchInCurve: Curves.easeInExpo,

        switchInCurve: Curves.easeInOutCubic,
        switchOutCurve: Curves.fastLinearToSlowEaseIn,
      ),
    );
  }

  Widget _buildExample1() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: Text('$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text('Increment'))
        ],
      ),
    );
  }
}
