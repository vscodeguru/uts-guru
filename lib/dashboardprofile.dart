import 'package:UTS/Utils/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'containerWidget1.dart';
import 'containerWidget3.dart';
import 'containerWiget2.dart';

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
            new Widget3(),
          
          ],
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  const Widget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ContainerWidget1();
  }
}

class Widget2 extends StatelessWidget {
  const Widget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ContainerWidget2();
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ContainerWidget3();
  }
}
class VerticalSeparator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.symmetric(vertical: 4.0),
        height: 80.0,
        width: 1.0,
        color: Colors.deepOrange
    );
  }
}