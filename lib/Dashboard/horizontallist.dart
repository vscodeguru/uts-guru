import 'package:flutter/material.dart';
import 'package:uts/Dashboard/widget/ticketWidget.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[Category()],
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TicketCardWidget(
          margin: EdgeInsets.only(right: 10),
          color: HexColor('#34495e'),
          text: 'RECHARGE',
          assetPath: 'assets/Images/ticket/rupee.svg',
        ),
        new TicketCardWidget(
          margin: EdgeInsets.only(right: 10),
          color: HexColor('#e67e22'),
          text: 'MOVIE',
          assetPath: 'assets/Images/ticket/movie.svg',
        ),
        new TicketCardWidget(
          margin: EdgeInsets.only(right: 10),
          color: HexColor('#0984e3'),
          text: 'FLIGHT',
          assetPath: 'assets/Images/ticket/flight.svg',
        ),
        new TicketCardWidget(
          margin: EdgeInsets.only(right: 10),
          color: HexColor('#1abc9c'),
          text: 'BUS',
          assetPath: 'assets/Images/ticket/bus.svg',
        ),
        new TicketCardWidget(
          margin: EdgeInsets.only(right: 10),
          color: HexColor('#40407a'),
          text: 'HOTEL',
          assetPath: 'assets/Images/ticket/tourist-1.svg',
        ),
        new TicketCardWidget(
          color: HexColor('#3498db'),
          text: 'TRAIN',
          assetPath: 'assets/Images/ticket/metro.svg',
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
