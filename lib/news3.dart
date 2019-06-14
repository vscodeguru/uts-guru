import 'package:flutter/material.dart';

class ListView3 extends StatelessWidget {
  const ListView3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 168.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 600,
                    width: 1.0,
                    color: Colors.blue,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                ],
              ),
            ),
            new Positioned(
              top: 100.0,
              left: 150.0,
              child: new Container(
                height: 60.0,
                width: 60.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: new Container(
                  margin: new EdgeInsets.all(5.0),
                  height: 30.0,
                  width: 30.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                ),
              ),
            ),
            Positioned(
              left: 200,
              child: Card(
                margin: new EdgeInsets.all(20.0),
                            child: new Container(
                             width:200,
                              height: 130.0,
                             color: Colors.green
              ),
              ),
            )
          ],
        )
      ],
    );
  }
}
