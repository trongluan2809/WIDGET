import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggerScrollableSheetSample extends StatefulWidget {
  @override
  _DraggerScrollableSheetSampleState createState() =>
      _DraggerScrollableSheetSampleState();
}

class _DraggerScrollableSheetSampleState
    extends State<DraggerScrollableSheetSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SizedBox.expand(
          child: DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.1,
            maxChildSize: 0.5,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/9/92/The_death.png"),
                      Text("This is a sample widget which shows a ListView that has 25 ListTiles. It starts out as taking up half the body of the Scaffold, and can be dragged up to the full height of the scaffold or down to 25% of the height of the scaffold. Upon reaching full height, the list contents will be scrolled up or down, until they reach the top of the list again and the user drags the sheet back down.")
                    ],
                  ),
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
