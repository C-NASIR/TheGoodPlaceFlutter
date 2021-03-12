import 'package:flutter/material.dart';
import 'goodplacemodel.dart';

class RoleGatherer extends StatefulWidget {
  final GoodPlaceModel goodPlaceModel;

  RoleGatherer({this.goodPlaceModel});

  @override
  _RoleGathererState createState() => _RoleGathererState();
}

class _RoleGathererState extends State<RoleGatherer> {
  String roleName;
  String actor;

  void _addRole() {
    widget.goodPlaceModel.addRole(name: roleName, actor: actor);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
            decoration: InputDecoration(labelText: 'Role Name'),
            onChanged: (text) {
              roleName = text;
            }),
        TextField(
            decoration: InputDecoration(labelText: 'Actor'),
            onChanged: (text) {
              actor = text;
            }),
        RaisedButton(child: Text('Add Actor'), onPressed: _addRole),
      ],
    );
  }
}
