import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Utils/helper.dart';


class ContainerWidget2 extends StatelessWidget {
  const ContainerWidget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.34,
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
            top: MediaQuery.of(context).size.height * 0.37,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "btn1",
                              backgroundColor: Helper.hexColor('#673BB7'),
                              child: SvgPicture.asset(
                                'assets/Images/contract.svg',
                                height: 27,
                                width: 27,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Registration')
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "btn2",
                              backgroundColor: Helper.hexColor('#673BB7'),
                              child: SvgPicture.asset(
                                'assets/Images/transfer (1).svg',
                                height: 27,
                                width: 27,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Topup')
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "btn3",
                            backgroundColor: Helper.hexColor('#673BB7'),
                              child: SvgPicture.asset(
                                'assets/Images/withdraw.svg',
                                height: 27,
                                width: 27,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(' Withdraw')
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "btn4",
                             backgroundColor: Helper.hexColor('#673BB7'),
                              child: Image.asset('assets/Images/save.png',
                                  scale: 15.0, color: Colors.white),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(' Transfer')
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              child: SvgPicture.asset(
                                'assets/Images/man (1).svg',
                                height: 27,
                                width: 27,
                                color: Colors.white,
                              ),
                              heroTag: "btn5",
                              backgroundColor: Helper.hexColor('#673BB7'),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Profile')
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "btn6",
                              backgroundColor: Helper.hexColor('#673BB7'),
                              child: SvgPicture.asset(
                                'assets/Images/complaint.svg',
                                height: 27,
                                width: 27,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Complaints')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.53,
            left: 10,
            child: Text(
              'List of Payment Details',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.58,
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
            top: MediaQuery.of(context).size.height * 0.75,
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
            top: MediaQuery.of(context).size.height * 0.93,
            left: 10,
            child: Text(
              'Details',
              style: TextStyle(fontSize: 18),
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
            top: MediaQuery.of(context).size.height * 1.16,
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
