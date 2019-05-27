import 'package:UTS/utils/helper.dart';
import 'package:flutter/material.dart';

class ErrorPageWidget extends StatefulWidget {
  ErrorPageWidget({Key key}) : super(key: key);

  _ErrorPageWidgetState createState() => _ErrorPageWidgetState();
}

class _ErrorPageWidgetState extends State<ErrorPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Helper.hexColor('#B0C6F5'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Images/error/construction.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                'Under Construction',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
