import 'package:UTS/Error/ErrorFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:UTS/SplashScreen/splash.dart';

import 'Registration/registration.dart';
import 'Registration/topup.dart';
import 'dashboardprofile.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/error": (BuildContext context) => ErrorPageWidget(),
        "/registration": (BuildContext context) => RegisterationWidget(),
        "/topup": (BuildContext context) => TopupWidget(),
        "/registratioDashboard": (BuildContext context) => UserProfile(),
      },
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(),
    );
  }
}
