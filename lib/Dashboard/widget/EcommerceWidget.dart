import 'package:flutter/material.dart';
import 'package:UTS/utils/helper.dart';

class Ecommerce extends StatefulWidget {
  Ecommerce({Key key}) : super(key: key);

  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
            Navigator.of(context).pushNamed("/error");
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Images/ecommerce/online.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [Helper.buildBoxShadow()]),
          height: 200,
        ),
      ),
    );
  }
}
