import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  AnimatedOpacityDemo({Key? key}) : super(key: key);

  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  double _visibility = 1.0;
  bool _isAdd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("Animated Opacity Demo"),
      ),
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _visibility = _visibility == 1.0 ? 0.0 : 1.0;
                });
              },
              child: Container( 
                width: 200,
                height: 50,
                decoration: BoxDecoration(  
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Center(
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: _visibility,
                    child: Text(  
                      "Hello",
                      style: TextStyle(  
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
            ),
            _buildAddFriendsButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddFriendsButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isAdd = !_isAdd;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: _isAdd ? 160 : 60,
        height: 60,
        decoration: BoxDecoration(  
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: _isAdd ? 0.0 : 1.0,
              child: Align(
                child: Icon(
                  Icons.person_add, 
                  color: Colors.white
                ),
              ),
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: _isAdd ? 1.0 : 0.0,
              child: Align(
                child: Text(
                  "Message"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}