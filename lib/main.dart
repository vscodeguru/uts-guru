import 'package:UTS/Error/ErrorFile.dart';
import 'package:UTS/Registration/registration.dart';
import 'package:UTS/Searchable/Searchabledropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:UTS/SplashScreen/splash.dart';

import 'Registration/registration2.dart';

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
        "/registration": (BuildContext context) => RegistrationForm(),
        "/search": (BuildContext context) => Searchwidget(),
         "/registration2": (BuildContext context) => RegistrationPage2(),
      },
      debugShowCheckedModeBanner: false,
      title: 'UTS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(),
    );
  }
}
