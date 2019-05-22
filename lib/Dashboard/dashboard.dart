import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:uts/Dashboard/downgrid.dart';
import 'package:uts/Dashboard/horizontallist.dart';
import 'package:uts/Dashboard/offers.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        overlayShadowSize: 1,
        boxFit: BoxFit.fitWidth,
        images: [
          AssetImage('assets/Images/clem.jpg'),
          AssetImage('assets/Images/photo.jpg'),
        ],
        autoplay: true,
        //   animationCurve: Curves.easeOutSine,
        //   animationDuration: Duration(milliseconds: 1000),
        //  // autoplayDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
        body: Container(
      child: new ListView(
        children: <Widget>[
          imageCarousel,
          new Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: <Widget>[
                // new Image(
                //   image:
                //       ExactAssetImage('assets/Images/ticket.png', scale: 5.0),
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                new Text(
                  'Tickets Booking',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            child: HorizontalList(),
            margin : EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.12,
          ),
          // new Padding(
          //   padding: EdgeInsets.all(2.0),
          // ),
          Container(
            color: Colors.blueGrey[50],
            margin : EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.24,
            child: CardList(),
          ),
          new Padding(
            padding: EdgeInsets.all(15.0),
            child: new Text('Recharge & Pay Bills'),
          ),
          Container(
            height: 200,
            child: DownGrid(),
          ),
        ],
      ),
    ));
  }
}
