import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatefulWidget {
  @override
  _FractionallySizedBoxDemoState createState() => _FractionallySizedBoxDemoState();
}

class _FractionallySizedBoxDemoState extends State<FractionallySizedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Fractionally SizedBox Demo"),
      ),
      body: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.7,
        child: Container(  
          color: Colors.red,
          child: Row(
            children: [
              Flexible(
                child: FractionallySizedBox(  
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(  
                    color: Colors.green
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
              Flexible(
                child: FractionallySizedBox(  
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(  
                    color: Colors.green
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ],
          )
        )
      )  //_buildRatingBar(),
    );
  }














  Container _buildRatingBar() {
    return Container(
      height: 24,
      child: Row(
        children: <Widget>[
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 6,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 6,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(125)),
                  ),
                )
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
                widthFactor: 1,
                child: Stack(
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(125)),
                        ),
                      ),
                    ),

                    FractionallySizedBox(
                      widthFactor: 0.75,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(125)),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          ..._buildFavoriteLevels(3)
        ],
      ),
    );
  }

  List<Widget> _buildFavoriteLevels(int favorites) {
    List<Widget> widgeList = [];
    for (var i = 0; i < favorites; i++) {
      widgeList.add(
        Flexible(
              child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(125)),
                    ),
                  )
              ),
            ),
      );
    }
    return widgeList;
  }


}