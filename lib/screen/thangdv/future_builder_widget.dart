import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FutureBuilderWidget();
}

class _FutureBuilderWidget extends State<FutureBuilderWidget>{

  String _data = '';
  bool _show = false;
  int counter = 0;
  late Future<String> _dataFetch;

  @override
  void initState() {
    super.initState();
    _dataFetch = _fetchDataFn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: FutureBuilder<String>(
        initialData: 'init',
        future: _dataFetch,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            _show = true;
            if(snapshot.hasData){
              _data = snapshot.data!;
            }
          }else {
            _show = false;
            if(snapshot.hasData){
              _data = snapshot.data!;
            }else{
              _data = 'error';
            }
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                  child: Text(_data, style: TextStyle(color: Colors.red, fontSize: 18),),
                ),
                Visibility(
                  child: Column(
                    children: [
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ],
                  ),
                  visible: _show,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Future<String> _fetchDataFn() {
    return Future.delayed(const Duration(seconds: 3), () => 'loaded');
  }
}