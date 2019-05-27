import 'package:flutter/material.dart';
import 'package:UTS/utils/helper.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return horizontalCard(context);
  }

  Widget verticalCard(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: ListView(
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
                        children: <Widget>[
                          Image.asset('assets/Images/Chit.png')
                        ],
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
      ),
    );
  }

  Widget horizontalCard(BuildContext context) {
    var _width = ((MediaQuery.of(context).size.width - 30) / 2);
    var _height = 170.0;
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
            Navigator.of(context).pushNamed("/error");
            },
            child: new Productcard(
              height: _height,
              width: _width,
              assetpath: 'assets/Images/bank1.jpg',
              text: 'Universal Trading Solution',
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
            Navigator.of(context).pushNamed("/error");
            },
            child: new Productcard(
              height: _height,
              width: _width,
              assetpath: 'assets/Images/chit1.jpg',
              text: 'Universal Chit Funds',
            ),
          ),
        ],
      ),
    );
  }
}

class Productcard extends StatelessWidget {
  const Productcard({
    Key key,
    @required double height,
    @required double width,
    @required String assetpath,
    @required String text,
  })  : _height = height,
        _width = width,
        _text = text,
        _assetpath = assetpath,
        super(key: key);

  final double _height;
  final double _width;
  final String _assetpath;
  final String _text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        boxShadow: [
          Helper.buildBoxShadow(
              blurRadius: 5.0, spreadRadius: 0.0, color: '#6f6f6f')
        ],
        image: DecorationImage(
          image: AssetImage(_assetpath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            _text,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
