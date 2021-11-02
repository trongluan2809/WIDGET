import 'package:flutter/material.dart';

class IndexedStackWg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexedStackWg();
}

class _IndexedStackWg extends State<IndexedStackWg> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
      ),
      body: _buildExample1(),
      floatingActionButton: FloatingActionButton(
        child: Text('Next'),
        onPressed: () {
          setState(() {
            if (this.selectedIndex < 2) {
              this.selectedIndex++;
            } else {
              this.selectedIndex = 0;
            }
          });
        },
      ),
    );
  }

  Widget _buildExample1() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: IndexedStack(
        alignment: Alignment.center,
        index: this.selectedIndex,
        sizing: StackFit.loose,
        children: [
          Container(
            width: 290,
            height: 210,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'index: $selectedIndex',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
          Container(
            width: 250,
            height: 150,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              'index: $selectedIndex',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
          Container(
            width: 220,
            height: 150,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text(
              'index: $selectedIndex',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
