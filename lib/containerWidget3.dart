import 'package:flutter/material.dart';

import 'Animations/fabanimations.dart';
import 'Utils/helper.dart';
import 'news1.dart';
import 'news2.dart';
import 'news3.dart';

class ContainerWidget3 extends StatelessWidget {
  const ContainerWidget3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 2.30,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage('assets/Images/fin.jpg'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width * 1.09,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 48),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/registration");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/Images/agreement.png',
                              scale: 8,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Registration',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 55.0,
                        width: 1.0,
                        color: Colors.grey[350],
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/topup");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/Images/wallet (1).png',
                              scale: 8,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Topup',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 55.0,
                        width: 1.0,
                        color: Colors.grey[350],
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Images/wallet.png',
                            scale: 8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Withdraw',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55.0,
                        width: 1.0,
                        color: Colors.grey[350],
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Images/cash-back.png',
                            scale: 8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55.0,
                        width: 1.0,
                        color: Colors.grey[350],
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Images/group.png',
                            scale: 8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 55.0,
                        width: 1.0,
                        color: Colors.grey[350],
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/Images/complaint.png',
                            scale: 8,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Complaint',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
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
            left: MediaQuery.of(context).size.width * 0.02,
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
            top: MediaQuery.of(context).size.height * 0.62,
            left: MediaQuery.of(context).size.width * 0.02,
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
            top: MediaQuery.of(context).size.height * 0.80,
            left: 10,
            child: Text(
              'Details',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            left: MediaQuery.of(context).size.width * 0.02,
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
            top: MediaQuery.of(context).size.height * 1.02,
            left: MediaQuery.of(context).size.width * 0.02,
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
          Positioned(
            top: MediaQuery.of(context).size.height * 1.23,
            left: 10,
            child: Text(
              'News & Announcement',
              style: TextStyle(fontSize: 18),
            ),
          ),
          new News3()
        ],
      ),
    );
  }
}

class News1 extends StatelessWidget {
  const News1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        top: MediaQuery.of(context).size.height * 1.28,
        child: new ListView1());
  }
}

class News2 extends StatelessWidget {
  const News2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        top: MediaQuery.of(context).size.height * 1.28,
        child: new ListView2());
  }
}

class News3 extends StatelessWidget {
  const News3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        top: MediaQuery.of(context).size.height * 1.28,
        child: new ListView3());
  }
}

