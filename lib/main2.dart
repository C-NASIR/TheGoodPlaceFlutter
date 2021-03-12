/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'goodplacemodel.dart';
import 'goodplacewidget.dart';
import 'rolegatherer.dart';
import 'statisticswidget.dart';

void main() {
  runApp(ChangeNotifierProvider(
      child: MyApp(), create: (context) => GoodPlaceModel()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text('The Good Place'),
              bottom: TabBar(tabs: [
                Text('Role Gatherer'),
                Text('ListView'),
                Text('Statistics')
              ])),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<GoodPlaceModel>(
                    builder: (context, goodPlaceModel, child) {
                  return RoleGatherer(goodPlaceModel: goodPlaceModel);
                }),
              ),
              Consumer<GoodPlaceModel>(
                  builder: (context, goodPlaceModel, child) {
                return GoodPlaceWidget(goodPlaceModel: goodPlaceModel);
              }),
              Consumer<GoodPlaceModel>(
                  builder: (context, goodPlaceModel, child) {
                return StatisticsWidget(goodPlaceModel: goodPlaceModel);
              })
            ],
          ),
        ),
      ),
    );
  }
}

*/