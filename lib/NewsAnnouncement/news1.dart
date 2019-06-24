import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  const ListView2({
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Wallet WithDraw',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '17-06-2019',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
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
                  left: 10.0,
                  child: new Container(
                    height: 50.0,
                    width: 50.0,
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
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/Images/wallet.png',
                              scale: 8.0),
                        ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Wallet Transfer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '17-06-2019',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          width: double.infinity,
                          height: 100.0,
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
                  left: 10.0,
                  child: new Container(
                    height: 50.0,
                    width: 50.0,
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
                        image: DecorationImage(
                          image: ExactAssetImage('assets/Images/cash-back.png',
                              scale: 8.0),
                        ),
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
                      padding: const EdgeInsets.only(right: 88.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Payout Issue',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '17-06-2019',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
                          width: double.infinity,
                          height: 100.0,
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
                  left: 10.0,
                  child: new Container(
                    height: 50.0,
                    width: 50.0,
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
                        image: DecorationImage(
                          image: ExactAssetImage('assets/Images/wallet (1).png',
                              scale: 8.0),
                        ),
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
                      padding: const EdgeInsets.only(right: 88.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Registration',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '17-06-2019',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: new Card(
                        margin: new EdgeInsets.all(20.0),
                        child: new Container(
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
                  left: 10.0,
                  child: new Container(
                    height: 50.0,
                    width: 50.0,
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
                        image: DecorationImage(
                          image: ExactAssetImage('assets/Images/agreement.png',
                              scale: 8.0),
                        ),
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
