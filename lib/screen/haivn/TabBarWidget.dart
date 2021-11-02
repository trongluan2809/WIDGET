import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Cat',
      icon: Icon(Icons.access_alarm_outlined),
    ),
    Tab(text: 'Dog', icon: Icon(Icons.access_alarm_outlined)),
    Tab(text: 'Rabbit', icon: Icon(Icons.access_alarm_outlined)),
    Tab(text: 'Chicken'),
    Tab(text: 'Duck'),
    Tab(text: 'Duck black'),
    Tab(text: 'Duck blue'),
    Tab(text: 'Duck red'),
  ];

  final List<Widget> myContents = [
    Text("HAHAA"),
    Row(children: [
      Icon(Icons.directions_car),
      SizedBox(width: 5),
      Text("Car")
    ]),
  ];

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _tabBarWidget(),
    );
  }

  Widget _tabBarWidget() {
    return DefaultTabController(
      length: myTabs.length,
      //initialIndex: 2, // Optional
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
            indicatorColor: Colors.amber,
            indicatorWeight: 12,
            indicatorPadding: EdgeInsets.only(right: 20, left: 20),
          ),
        ),
        body: TabBarView(
          children: [
            Text("data 1"),
            Text("data 2"),
            Text("data 3"),
            Text("data 4"),
            Text("data 5"),
            Text("data 6"),
            Text("data 7"),
            Text("data 8"),
          ],
        ),
      ),
    );
  }
}
