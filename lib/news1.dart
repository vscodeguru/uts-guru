import 'package:flutter/material.dart';
 
class ListView1 extends StatelessWidget {
  const ListView1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 68.0),
                      child: Text(
                        'Wallet WithDraw',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                //                   <--- left side
                                color: Colors.pinkAccent,
                                width: 20.0,
                              ),
                            ),
                          ),
                          width: double.infinity,
                          height: 100.0,
                          // color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 15.0, right: 8.0),
                            child: Text(
                              'Paint your app to life in milliseconds with stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  left: 35.0,
                  child: new Container(
                    height: double.infinity,
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                new Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Container(
                      margin: new EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 68.0),
                      child: Text(
                        'Wallet Transfer',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border(
                            right: BorderSide(
                              //                   <--- left side
                              color: Colors.blueAccent,
                              width: 20.0,
                            ),
                          )),
                          width: double.infinity,
                          height: 100.0,
                          // color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 15.0, right: 8.0),
                            child: Text(
                              'Paint your app to life in milliseconds with stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  left: 35.0,
                  child: new Container(
                    height: double.infinity,
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                new Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Container(
                      margin: new EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 68.0),
                      child: Text(
                        'Payout Issue',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border(
                            right: BorderSide(
                              //                   <--- left side
                              color: Colors.greenAccent,
                              width: 20.0,
                            ),
                          )),
                          width: double.infinity,
                          height: 100.0,
                          // color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 15.0, right: 8.0),
                            child: Text(
                              'Paint your app to life in milliseconds with stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  left: 35.0,
                  child: new Container(
                    height: double.infinity,
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                new Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Container(
                      margin: new EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 68.0),
                      child: Text(
                        'Registration',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          decoration: BoxDecoration(
                              border: Border(
                            right: BorderSide(
                              //                   <--- left side
                              color: Colors.purpleAccent,
                              width: 20.0,
                            ),
                          )),
                          width: double.infinity,
                          height: 100.0,
                          // color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 15.0, right: 8.0),
                            child: Text(
                              'Paint your app to life in milliseconds with stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  left: 35.0,
                  child: new Container(
                    height: double.infinity,
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                new Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Container(
                      margin: new EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}