import 'dart:async';
import 'package:flutter/material.dart';
import 'package:UTS/Dashboard/dashboard.dart';
import 'package:UTS/utils/helper.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 0), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage('assets/Images/logo.png'),
              ),
            ),
            CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Helper.hexColor('#79afbb')),
            ),
          ],
        ),
      ),
    );
  }
}
