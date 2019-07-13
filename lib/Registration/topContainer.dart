import 'package:UTS/Animations/fabanimations.dart';
import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';


class Topcontainer extends StatelessWidget {
  const Topcontainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 38.0),
          child: Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                    'assets/Images/crowd.png',
                    scale: 2.8),
                // fit: BoxFit.cover
              ),
            ),
            child: ShowUp(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Helper.hexColor('#4ca7d4'),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Registration',
                        style: TextStyle(
                          color: Helper.hexColor('#4ca7d4'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}