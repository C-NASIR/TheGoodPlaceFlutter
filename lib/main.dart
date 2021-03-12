import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'goodplacemodel.dart';
import 'goodplacewidget.dart';
import 'rolegatherer.dart';
import 'statisticswidget.dart';

void main() {
  runApp(ChangeNotifierProvider(
      child: MyApp(), create: (context) => GoodPlaceModel()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tabs = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Consumer<GoodPlaceModel>(builder: (context, goodPlaceModel, child) {
        return RoleGatherer(goodPlaceModel: goodPlaceModel);
      }),
    ),
    Consumer<GoodPlaceModel>(builder: (context, goodPlaceModel, child) {
      return GoodPlaceWidget(goodPlaceModel: goodPlaceModel);
    }),
    Consumer<GoodPlaceModel>(builder: (context, goodPlaceModel, child) {
      return StatisticsWidget(goodPlaceModel: goodPlaceModel);
    })
  ];

  void _tapped(int index) {
    setState(() {
      chosenTab = index;
    });
  }

  int chosenTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Good Place'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            currentIndex: chosenTab,
            onTap: _tapped,
            items: [
              BottomNavigationBarItem(
                  label: 'Role Gatherer', icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  label: 'List View', icon: Icon(Icons.list)),
              BottomNavigationBarItem(
                  label: 'Statistics', icon: Icon(Icons.bar_chart)),
            ]),
        body: tabs[chosenTab],
      ),
    );
  }
}
