import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        //   padding: const EdgeInsets.only(left: 0.0),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image:
                          ExactAssetImage('assets/Images/UCF.png', scale: 8.0),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Universal Chits Funds",style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image(
                      image:  ExactAssetImage('assets/Images/UCF.png', scale: 8.0),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Universal Trading Solutions",style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String iconLocation;
  final String iconCaption;
  Category({this.iconLocation, this.iconCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              width: 130.0,
              child: ListTile(
                title: FloatingActionButton(
                  mini: true,
                  heroTag: null,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pinkAccent[700],
                  child: Icon(Icons.perm_device_information),
                  onPressed: () {},
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 15),
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Offers',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                ),
              ),
            ),
            VerticalDivider(
              width: 2,
              indent: 10.0,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
              ),
              width: 130.0,
              child: ListTile(
                title: FloatingActionButton(
                  mini: true,
                  heroTag: null,
                  elevation: 6,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.card_giftcard),
                  onPressed: () {},
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Rewards',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
