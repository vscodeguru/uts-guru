import 'package:flutter/material.dart';
import 'package:UTS/utils/helper.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          GestureDetector(
          onTap: () {
           Navigator.of(context).pushNamed("/error");
          },
          child: buildContainer('assets/Images/card/education.png'),
        ),
        GestureDetector(
          onTap: () {
           Navigator.of(context).pushNamed("/error");
          },
          child: buildContainer('assets/Images/card/trading.png'),
        ),
          GestureDetector(
          onTap: () {
           Navigator.of(context).pushNamed("/error");
          },
          child: buildContainer('assets/Images/ecommerce/online.png'),
        ),
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
