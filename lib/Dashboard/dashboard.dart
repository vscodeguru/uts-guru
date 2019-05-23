import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:uts/Dashboard/downgrid.dart';
import 'package:uts/Dashboard/horizontallist.dart';
import 'package:uts/Dashboard/offers.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                new SvgPicture.asset(
                  'assets/Images/ticket/movietickets.svg',
                  height: MediaQuery.of(context).size.height * 0.10 - 52,
                ),
                SizedBox(
                  width: 10,
                ),
                new Text(
                  'Tickets Booking',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            child: HorizontalList(),
            margin: EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.12,
          ),
          new Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: <Widget>[
                new SvgPicture.asset(
                  'assets/Images/ticket/movietickets.svg',
                  height: MediaQuery.of(context).size.height * 0.10 - 52,
                ),
                SizedBox(
                  width: 10,
                ),
                new Text(
                  'Our Products',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.blueGrey[50],
            margin: EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.55,
            width: double.infinity,
            child: CardList(),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: <Widget>[
                new SvgPicture.asset(
                  'assets/Images/ticket/movietickets.svg',
                  height: MediaQuery.of(context).size.height * 0.10 - 52,
                ),
                SizedBox(
                  width: 10,
                ),
                new Text(
                  'Tickets Booking',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
           //  margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.72,
            child: DownGrid(),
          ),
        ],
      ),
    ));
  }
}
