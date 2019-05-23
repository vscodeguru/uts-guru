import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Cardwidget();
  }
}

class Cardwidget extends StatelessWidget {
  const Cardwidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print('Tapped');
              },
              child: Stack(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/Images/bank.jpg'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.10,
                    left: MediaQuery.of(context).size.width * 0.08,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Universal\n Trading Solutions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Tapped');
              },
              child: Stack(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[Image.asset('assets/Images/Chit.png')],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.12,
                    left: MediaQuery.of(context).size.width * 0.56,
                    child: Text(
                      'Universal\n Chit Funds',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class Category extends StatelessWidget {
//   final String iconLocation;
//   final String iconCaption;
//   Category({this.iconLocation, this.iconCaption});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(2.0),
//       child: InkWell(
//         onTap: () {},
//         child: Row(
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.only(
//                 top: 20,
//               ),
//               width: 130.0,
//               child: ListTile(
//                 title: FloatingActionButton(
//                   mini: true,
//                   heroTag: null,
//                   elevation: 6,
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.pinkAccent[700],
//                   child: Icon(Icons.perm_device_information),
//                   onPressed: () {},
//                 ),
//                 subtitle: Container(
//                   padding: EdgeInsets.only(top: 15),
//                   alignment: Alignment.topCenter,
//                   child: Text(
//                     'Offers',
//                     style: TextStyle(fontSize: 17, color: Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//             VerticalDivider(
//               width: 2,
//               indent: 10.0,
//               color: Colors.black,
//             ),
//             Container(
//               padding: EdgeInsets.only(
//                 top: 20,
//               ),
//               width: 130.0,
//               child: ListTile(
//                 title: FloatingActionButton(
//                   mini: true,
//                   heroTag: null,
//                   elevation: 6,
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.indigo,
//                   child: Icon(Icons.card_giftcard),
//                   onPressed: () {},
//                 ),
//                 subtitle: Container(
//                   padding: EdgeInsets.only(top: 15, left: 10),
//                   alignment: Alignment.topCenter,
//                   child: Text(
//                     'Rewards',
//                     style: TextStyle(fontSize: 20, color: Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
