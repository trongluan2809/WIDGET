import 'package:flutter/material.dart';

class CheckBoxListScreen extends StatefulWidget {
  @override
  _CheckBoxListScreenState createState() => _CheckBoxListScreenState();
}

class _CheckBoxListScreenState extends State<CheckBoxListScreen> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CheckboxListTile(
                  secondary: Icon(Icons.alarm),
                  title: Text('First'),
                  subtitle: Text('First subtitle'),
                  value: this.valuefirst,
                  onChanged: (value) {
                    setState(() {
                      this.valuefirst = value!;
                    });
                  }),
              CheckboxListTile(
                checkColor: Colors.green,
                activeColor: Colors.red,
                  secondary: Icon(Icons.alarm),
                  title: Text('Second'),
                  subtitle: Text('Second subtitle'),
                  value: this.valuesecond,
                  onChanged: (value) {
                    setState(() {
                      this.valuesecond = value!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
