import 'package:flutter/material.dart';
import 'package:widget_of_the_week/catalog_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget of the Week',
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          space: 50,
          thickness: 10,
          color: Colors.green,
          indent: 10,
          endIndent: 10
        ),
        primarySwatch: Colors.blue,
      ),
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  ///CHÚ Ý: CÁC MEMBER CÁC NHÓM VÀO ĐÚNG TEAM MÌNH VÀ ĐIỂN WIDGET MÌNH ĐANG LÀM VÀO NHÉ
  final List<SegmentCatalogModel> _listCatalog = [
    SegmentCatalogModel(
      captainName: "Hải Captain",
      listCatalog: CatalogModel.teamHaiLM(),
    ),
    SegmentCatalogModel(
      captainName: "Hai Captain",
      listCatalog: CatalogModel.teamHaiVN(),
    ),
    SegmentCatalogModel(
      captainName: "Tuấn Captain",
      listCatalog: CatalogModel.teamTuanPV(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh mục'),
      ),
      body: ListView(
        children: [
          _widgetAt(0, context),
          _widgetAt(1, context),
          _widgetAt(2, context)
        ],
      ),
    );
  }

  ExpansionTile _widgetAt(int index, BuildContext context) {
    SegmentCatalogModel segmentCatalogModel = _listCatalog[index];
    return ExpansionTile(
      title: Text(segmentCatalogModel.captainName),
      children: segmentCatalogModel.listCatalog.map((catalogModel) {
        return Container(
          width: double.infinity,
          child: Card(
            child: InkWell(
              child: Padding(
                child: Text(
                  catalogModel.widgetName,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              ),
              onTap: () async {
                await Future.delayed(Duration(milliseconds: 200));
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => catalogModel.goToScreen));
              },
            ),
          ),
        );
      }).toList(),
    );
  }
}
