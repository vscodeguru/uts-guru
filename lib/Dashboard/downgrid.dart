import 'package:flutter/material.dart';

class DownGrid extends StatelessWidget {
  const DownGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          // padding: EdgeInsets.only(bottom: 30),
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 8.0,
            color: Color.fromRGBO(64, 75, 96, .9),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/Images/300_12.jpg'),
                      radius: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Flutter Guru',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.linear_scale,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          //  padding: EdgeInsets.only(bottom: 30),
          height: 150,
          child: Card(
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 8.0,
            color: HexColor('#e67e22'),
            //       margin: EdgeInsets.all(15),

            //   margin: EdgeInsets.only(left:5,right: 5,bottom: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/Images/100_5.jpg'),
                      radius: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'UTS GURU',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.linear_scale,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          //  padding: EdgeInsets.only(bottom: 30),
          height: 150,
          child: Card(
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 8.0,
            color: HexColor('#40407a'),
            //       margin: EdgeInsets.all(15),

            //   margin: EdgeInsets.only(left:5,right: 5,bottom: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/Images/100_6.jpg'),
                      radius: MediaQuery.of(context).size.width * 0.10,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Reverse Parallel Parking',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.linear_scale,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Intermediate',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
