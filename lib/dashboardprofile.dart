import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key}) : super(key: key);

  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with TickerProviderStateMixin {
  AnimationController animationControllerScreen;
  Animation animationScreen;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationControllerScreen =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animationScreen =
        Tween(begin: 1.0, end: 0.0).animate(animationControllerScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 1.15,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            ExactAssetImage('assets/Images/slider/movie.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.92,
                    left: 14,
                    child: Container(
                      height: 130,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/Images/bitcoin.png',
                                  scale: 8.0,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Wallet Balance',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/Images/transfer.png',
                                    scale: 8.0),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/Images/withdraw.png',
                                  scale: 8.0,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Withdrawl',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/Images/transfer.png',
                                    scale: 8.0),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Withdrawl',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.40,
                    left: 10,
                    child: Text(
                      'List of Payment Details',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.45,
                    left: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Helper.hexColor('#e67e22'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Wallet Balance',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '1,00,000',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Helper.hexColor('#2980b9'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Investment',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '50,00,000',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.60,
                    left: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Helper.hexColor('#34495e'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Wallet Unpaid',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '1,00,000',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Helper.hexColor('#8e44ad'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Franchise Balance',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '50,00,000',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.78,
                    left: 14,
                    child: Text(
                      'Details',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.83,
                    left: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Colors.grey[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                children: <Widget>[
                                  Icon(
                                    Icons.account_balance,
                                    size: 25,
                                    color: Helper.hexColor('#27ae60'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Govermental Affairs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '1,00,000',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Colors.grey[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                children: <Widget>[
                                  Icon(
                                    Icons.home,
                                    size: 25,
                                    color: Helper.hexColor('#e67e22'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Govermental Affairs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '1,00,000',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.98,
                    left: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Colors.grey[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                children: <Widget>[
                                  Icon(
                                    Icons.account_balance,
                                    size: 25,
                                    color: Helper.hexColor('#27ae60'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Govermental Affairs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '1,00,000',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          child: Card(
                            elevation: 10,
                            color: Colors.grey[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                children: <Widget>[
                                  Icon(
                                    Icons.home,
                                    size: 25,
                                    color: Helper.hexColor('#e67e22'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Govermental Affairs',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '1,00,000',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
