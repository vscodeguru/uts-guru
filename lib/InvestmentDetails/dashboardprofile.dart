import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'containerWidget.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key}) : super(key: key);

  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            new InvestmentWidgetDefinition(),
          ],
        ),
      ),
    );
  }
}

class InvestmentWidgetDefinition extends StatelessWidget {
  const InvestmentWidgetDefinition({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new InvestmentWidget();
  }
}
