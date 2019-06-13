import 'package:flutter/material.dart';

import 'Utils/helper.dart';

class ContainerWidget1 extends StatelessWidget {
  const ContainerWidget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.40,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage('assets/Images/slider/movie.jpg'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: 8,
            child: Text(
              'Details About Payment',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.36,
            child: Container(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                childAspectRatio: 1.8,
                padding: const EdgeInsets.only(left: 0.0),
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 1.0,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/card");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/Images/contract.png',
                              scale: 6.0,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Registration',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/report");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset('assets/Images/dollar.png',
                                scale: 6.0),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Topup',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
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
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
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
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Profile ",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.business,
                              color: Colors.yellow,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Complaints",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.58,
            left: 10,
            child: Text(
              'List of Payment Details',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.63,
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
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1,00,000',
                          style: TextStyle(color: Colors.white, fontSize: 13),
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
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '50,00,000',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.79,
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
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1,00,000',
                          style: TextStyle(color: Colors.white, fontSize: 13),
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
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '50,00,000',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.96,
            left: 10,
            child: Text(
              'Details',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 1.02,
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
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
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
                                fontWeight: FontWeight.bold, fontSize: 13),
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
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
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
                                fontWeight: FontWeight.bold, fontSize: 13),
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
            top: MediaQuery.of(context).size.height * 1.20,
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
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
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
                                fontWeight: FontWeight.bold, fontSize: 13),
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
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
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
                            style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}