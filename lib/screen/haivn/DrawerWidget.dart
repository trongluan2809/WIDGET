import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Demo'),
        ),
        drawer: _drawerLayout(),
        endDrawer: _drawerLayout(),
        body: Container(
          child: Text("Body"),
        ),
      ),
    );
  }

  Widget _drawerLayout() {
    return Drawer(
      child: Container(
        width: 50,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              // onTap: () {
              //
              // },
              title: Text('Settings'),
            ),
            Text("Ahihi")
          ],
        ),
      ),
    );
  }
}
