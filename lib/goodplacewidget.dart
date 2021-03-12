import 'package:flutter/material.dart';
import 'goodplacemodel.dart';

class GoodPlaceWidget extends StatelessWidget {
  final GoodPlaceModel goodPlaceModel;
  GoodPlaceWidget({this.goodPlaceModel});

  void _deleteRole(int index) {
    goodPlaceModel.deleteRoleAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: goodPlaceModel.roles.length,
        itemBuilder: (context, index) => ListTile(
              leading: Image(
                  image: AssetImage(
                      'images/${goodPlaceModel.roles[index].name}.png')),
              title: Text(goodPlaceModel.roles[index].name),
              subtitle: Text(goodPlaceModel.roles[index].actor),
              onLongPress: () {
                _deleteRole(index);
              },
            ),
        separatorBuilder: (context, int) =>
            Divider(color: Colors.red[500], thickness: 1.0, height: 1.0));
  }
}

// ListView.separated({int itemCount, Function (BuildContext context, int index) itemBuilder}){
//     List<Widget> children = [];
//     for(int i=0; i < itemCount; i++){
//         var listTile = itemBuilder(context, i);
//         children.add(listTile);
//     }

//     // populate the ListView
// }
