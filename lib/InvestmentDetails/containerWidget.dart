import 'package:UTS/NewsAnnouncement/news1.dart';
import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';

class InvestmentWidget extends StatelessWidget {
  final String newdata;
  const InvestmentWidget({
    Key key,
    this.newdata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
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
            top: MediaQuery.of(context).size.height * 0.24,
            width: MediaQuery.of(context).size.width * 1.09,
            height: MediaQuery.of(context).size.height * 0.12,
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
                              'assets/Images/investmentcard/agreement.png',
                              scale: 8,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Registration',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
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
                              'assets/Images/investmentcard/wallet (1).png',
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
                            'assets/Images/investmentcard/wallet.png',
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
                            'assets/Images/investmentcard/cash-back.png',
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
                            'assets/Images/investmentcard/group.png',
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
                            'assets/Images/investmentcard/complaint.png',
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
            top: MediaQuery.of(context).size.height * 0.49,
            left: MediaQuery.of(context).size.width * 0.02,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  // height: 100,
                  // width: 170,
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
            top: MediaQuery.of(context).size.height * 0.60,
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
            top: MediaQuery.of(context).size.height * 0.78,
            left: 10,
            child: Text(
              'For Support',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.84,
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
            child: Column(
              children: <Widget>[
                Container(
                  width: 390,
                  height: 230,
                  decoration: BoxDecoration(
                    boxShadow: [
                      Helper.buildBoxShadow(
                          blurRadius: 2.0, spreadRadius: 0.0, color: '#6f6f6f')
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/Images/support.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 15,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Helper.hexColor('#2C3D6D'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              ': $newdata',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 15,
                              child: Text(
                                'Mobile',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Helper.hexColor('#2C3D6D'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                ': 9994594163',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 15,
                              child: Text(
                                'Address',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Helper.hexColor('#2C3D6D'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                ': Salem',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 1.22,
            left: 10,
            child: Text(
              'News & Announcement',
              style: TextStyle(fontSize: 18),
            ),
          ),
          new News1()
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
        top: MediaQuery.of(context).size.height * 1.24, child: new ListView2());
  }
}
