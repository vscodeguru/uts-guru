import 'package:flutter/material.dart';
import 'package:uts/Utils/helper.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildContainer('assets/Images/card/education.png'),
        buildContainer('assets/Images/card/trading.png'),
      ],
    );
  }

  Container buildContainer(String assetPath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.cover,
          ),
          boxShadow: [Helper.buildBoxShadow()]),
      height: 180,
    );
  }
}
