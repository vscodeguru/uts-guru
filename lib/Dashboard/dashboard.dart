import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:UTS/Dashboard/widget/RechargeBookingWidget.dart';
import 'package:UTS/Dashboard/widget/ProductWidget.dart';
import 'package:UTS/Dashboard/widget/ServiceCardWidget.dart';
import 'package:UTS/utils/helper.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  String _imageUrl = 'https://flutter.io/images/catalog-widget-placeholder.png';
  final bigPictureStyleInformation =
      BigPictureStyleInformation('crowd', BitmapSource.Drawable);

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('app_icon');
    var ios = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(android, ios);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async {}

  showNotification() async {
    var android = new AndroidNotificationDetails(
      'channel id',
      'channel name',
      'cancel Descrpition',
      importance: Importance.Max,
      priority: Priority.High,
      icon: 'uts',
      style: AndroidNotificationStyle.BigPicture,
      styleInformation: bigPictureStyleInformation,
    );
    var ios = new IOSNotificationDetails(presentBadge: true);
    var platform = new NotificationDetails(android, ios);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Welcome to Universal Trading Solutions,',
      'Flutter Notification',
      platform,
    );
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
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  showNotification();
                }),
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
