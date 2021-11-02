import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButtonWidget> {
  List<Icon> _icons = [
    Icon(Icons.ac_unit),
    Icon(Icons.call),
    Icon(Icons.cake),
    Icon(Icons.access_alarm),
    Icon(Icons.analytics)
  ];
  List<bool> _selected = [];

  @override
  void initState() {
    _addSelection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button'),
      ),
      body: _buildExample1(),
    );
  }

  Widget _buildExample1() {
    return Center(
      child: ToggleButtons(
        isSelected: _selected,
        children: _icons,
        onPressed: (index) => _onPressed(index),

        selectedColor: Colors.blue,
        // color: Colors.amber,
        // splashColor: Colors.amber,
        // highlightColor: Colors.amber,
        // fillColor: Colors.amber,

        // borderColor: Colors.amber,
        // selectedBorderColor: Colors.amber,
        // borderRadius: BorderRadius.circular(50),
        // renderBorder: false,
      ),
    );
  }

  void _addSelection() {
    for (var i = 0; i < _icons.length; i++) {
      _selected.add(false);
    }
  }

  void _onPressed(int index) => {
        setState(() {
          _selected[index] = !_selected[index];

          for (var i = 0; i < _selected.length; i++) {
            if (index == i) continue;
            _selected[i] = false;
          }
        })
      };
}
