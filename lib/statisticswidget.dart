import 'package:flutter/material.dart';
import 'goodplacemodel.dart';
import 'package:sprintf/sprintf.dart';

class StatisticsWidget extends StatelessWidget {
  StatisticsWidget({this.goodPlaceModel});
  final GoodPlaceModel goodPlaceModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1),
        Row(children: [
          Text('Number of Roles: ', style: TextStyle(fontSize: 24.0)),
          Text('${goodPlaceModel.numRoles()}', style: TextStyle(fontSize: 24.0))
        ]),
        Spacer(flex: 1),
        Row(children: [
          Text('Average Role Length: ', style: TextStyle(fontSize: 24.0)),
          Text('${sprintf("%.2f", [goodPlaceModel.meanRoleNameLength()])}',
              style: TextStyle(fontSize: 24.0))
        ]),
        Spacer(flex: 10),
      ],
    );
  }
}
