import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:UTS/Dashboard/widget/RechargeBookingWidget.dart';
import 'package:UTS/Dashboard/widget/ProductWidget.dart';
import 'package:UTS/Dashboard/widget/ServiceCardWidget.dart';
import 'package:UTS/utils/helper.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
  }

  DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      width: double.infinity,
      child: new Carousel(
        overlayShadowSize: 1,
        boxFit: BoxFit.fitWidth,
        images: [
          AssetImage('assets/Images/slider/flight.jpg'),
          AssetImage('assets/Images/slider/hotel1.jpg'),
          AssetImage('assets/Images/slider/e-shopping.jpg'),
          AssetImage('assets/Images/slider/Movie.jpg'),
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Helper.hexColor('#79afbb'),
          centerTitle: true,
          leading: Image.asset(
            'assets/Images/logo/uts.png',
            scale: 1.6,
          ),
          title: Text(
            'Universal Trading Solutions',
            style: TextStyle(fontSize: 15),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
          elevation: 10.0,
        ),
        body: Container(
          child: new SingleChildScrollView(
            child: Column(
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
          ),
        ),
      ),
    );
  }

  Padding sectionHeader(String text) {
    return new Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: <Widget>[
          new Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Future<bool> onBackPressed() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Toast.show('Press back again to exit the app', context,
          duration: 2, backgroundColor: Colors.blueGrey[500]);
      return Future.value(false);
    }
    return SystemNavigator.pop();
  }
}
