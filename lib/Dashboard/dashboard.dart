import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:uts/Dashboard/widget/RechargeBookingWidget.dart';

import 'package:uts/Dashboard/widget/ProductWidget.dart';
import 'package:uts/Dashboard/widget/ServiceCardWidget.dart';

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
          AssetImage('assets/Images/slider/flight.jpg'),
          AssetImage('assets/Images/slider/hotel1.jpg'),
          AssetImage('assets/Images/slider/online-shopping.jpg'),
          AssetImage('assets/Images/slider/movie.jpg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
        body: Container(
      child: new ListView(
        children: <Widget>[
          imageCarousel,
          sectionHeader('Recharge & Booking'),
          RechargeBookingWidget(),
          sectionHeader('Product'),
          ProductWidget(),
          sectionHeader('Services'),
          ServiceCardWidget(),
        ],
      ),
    ));
  }

  Padding sectionHeader(String text) {
    return new Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: <Widget>[
          // new SvgPicture.asset(
          //   'assets/Images/ticket/movietickets.svg',
          //   height: MediaQuery.of(context).size.height * 0.10 - 52,
          // ),

          new Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
