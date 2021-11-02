import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedWidgetScreen extends StatefulWidget {
  @override
  _AnimatedWidgetScreenState createState() => _AnimatedWidgetScreenState();
}

class _AnimatedWidgetScreenState extends State<AnimatedWidgetScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              alignment: Alignment.center,
              child: AnimatedScale(
                controller: _controller,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Resume', style: TextStyle(color: Colors.white)),
              onPressed: () => {_controller..repeat()},
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Pause', style: TextStyle(color: Colors.white)),
              onPressed: () => {_controller.stop()},
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedRotate extends AnimatedWidget {
  const AnimatedRotate({Key? key, required AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    print('Angle $_progress.value * 2.0 * math.pi}');
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.teal,
        child: const Center(
          child: Text(
            'Vũ Viết Dương',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedScale extends AnimatedWidget {
  const AnimatedScale({Key? key, required AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    print('Zoom $_progress');
    return Transform.scale(
      scale: _progress.value,
      // angle: _progress.value * 2.0 * math.pi,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.teal,
        child: const Center(
          child: Text(
            'Vũ Viết Dương',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
