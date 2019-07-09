import 'package:flutter/material.dart';
import 'package:UTS/utils/helper.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return horizontalCard(context);
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
              Navigator.of(context).pushNamed("/registrationDashboard");
            },
            child: new Productcard(
              height: _height,
              width: _width,
              assetpath: 'assets/Images/product/bank1.jpg',
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
              assetpath: 'assets/Images/product/chit1.jpg',
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
