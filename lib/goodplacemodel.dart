import 'package:flutter/material.dart';
import 'role.dart';

class GoodPlaceModel extends ChangeNotifier {
  var roles = [
    Role(name: 'Chidi', actor: 'William Jackson Harper'),
    Role(name: 'Eleanor', actor: 'Kristen Bell'),
    Role(name: 'Jason', actor: 'Manny Jacinto'),
    Role(name: 'Tahani', actor: 'Jameela Jamil'),
    Role(name: 'Michael', actor: 'Ted Danson'),
  ];

  void addRole({String name, String actor}) {
    var roleToAdd = Role(name: name, actor: actor);
    roles.add(roleToAdd);
    notifyListeners();
  }

  void deleteRoleAt(int index) {
    roles.removeAt(index);
    notifyListeners();
  }

  int numRoles() {
    return roles.length;
  }

  double meanRoleNameLength() {
    double roleNameLength = 0.0;

    for (var role in roles) {
      roleNameLength += role.name.length;
    }

    return roleNameLength / roles.length;
  }
}

/*class Role {
  String name;
  String actor;
  Role({this.name, this.actor});
}*/
