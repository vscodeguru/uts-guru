import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:UTS/Dashboard/widget/verticalSeperator.dart';
import 'package:UTS/utils/helper.dart';

class RechargeBookingWidget extends StatelessWidget {
  const RechargeBookingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                Navigator.of(context).pushNamed("/registration");
                },
                child: new TicketCardWidget(
                  margin: EdgeInsets.only(right: 10),
                  color: Helper.hexColor('#34495e'),
                  text: 'RECHARGE',
                  assetPath: 'assets/Images/ticket/rupee.svg',
                ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).pushNamed("/registration");
                },
                child: new TicketCardWidget(
                  margin: EdgeInsets.only(right: 10),
                  color: Helper.hexColor('#e67e22'),
                  text: 'MOVIE',
                  assetPath: 'assets/Images/ticket/movie.svg',
                ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).pushNamed("/error");
                },
                child: new TicketCardWidget(
                  margin: EdgeInsets.only(right: 10),
                  color: Helper.hexColor('#0984e3'),
                  text: 'FLIGHT',
                  assetPath: 'assets/Images/ticket/flight.svg',
                ),
              ),
              GestureDetector(
                onTap: () {
                Navigator.of(context).pushNamed("/error");
                },
                child: new TicketCardWidget(
                  margin: EdgeInsets.only(right: 10),
                  color: Helper.hexColor('#1abc9c'),
                  text: 'BUS',
                  assetPath: 'assets/Images/ticket/bus.svg',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/error");
                },
                child: new TicketCardWidget(
                  margin: EdgeInsets.only(right: 10),
                  color: Helper.hexColor('#40407a'),
                  text: 'HOTEL',
                  assetPath: 'assets/Images/ticket/tourist-1.svg',
                ),
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).pushNamed("/error");
                },
                child: new TicketCardWidget(
                  color: Helper.hexColor('#3498db'),
                  text: 'TRAIN',
                  assetPath: 'assets/Images/ticket/metro.svg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TicketCardWidget extends StatelessWidget {
  final Color color;
  final VoidCallback onClick;
  final EdgeInsets margin;
  final String text;
  final String assetPath;
  const TicketCardWidget({
    this.color,
    this.onClick,
    this.margin,
    this.text,
    this.assetPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ticket3(context);
  }

  Widget ticket1(BuildContext context) {
    var width = ((MediaQuery.of(context).size.width - 60) / 5);
    var height = width; // MediaQuery.of(context).size.height * 0.10;
    var widht1 = width / 12;
    var lftWidth = (widht1 * 10) - 2;
    var rgtWidth = widht1 * 2;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: this.margin,
        width: width,
        height: height,
        child: Row(
          children: <Widget>[
            VerticalDashedSeparator(
              backgroundColor: this.color,
              color: Colors.transparent,
              dashWidth: 2,
              dashHeight: 7,
            ),
            Container(
              width: lftWidth + rgtWidth - 2,
              height: height,
              decoration: BoxDecoration(
                color: this.color,
              ),
              child: Center(
                  child: SvgPicture.asset(
                this.assetPath,
                height: height - 20,
                width: height - 20,
                color: Colors.white,
              )),
            ),
            VerticalDashedSeparator(
              backgroundColor: this.color,
              color: Colors.transparent,
              dashWidth: 2,
              dashHeight: 7,
            ),
          ],
        ),
      ),
    );
  }

  Widget ticket2(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.30;
    var height = MediaQuery.of(context).size.height * 0.10;
    var widht1 = width / 12;
    var lftWidth = (widht1 * 9) - 2;
    var rgtWidth = widht1 * 3;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: this.margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: lftWidth,
              height: height,
              decoration: BoxDecoration(
                color: this.color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
              ),
              child: Center(
                  child: SvgPicture.asset(
                this.assetPath,
                height: height - 30,
                width: height - 30,
                color: Colors.white,
              )),
            ),
            VerticalDashedSeparator(
              backgroundColor: this.color,
              color: Colors.white,
              dashWidth: 2,
              dashHeight: 7,
            ),
            Container(
              width: rgtWidth,
              height: height,
              decoration: BoxDecoration(
                color: this.color,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: RotatedBox(
                quarterTurns: 3,
                child: Center(
                    child: Text(
                  this.text,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ticket3(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.27;
    var height = MediaQuery.of(context).size.height * 0.10;
    var widht1 = width / 12;
    var middle = (widht1 * 12) - 4;
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: this.margin,
        width: width,
        height: height,
        child: Row(
          children: <Widget>[
            VerticalDashedSeparator(
              backgroundColor: this.color,
              color: Colors.transparent,
              dashWidth: 2,
              dashHeight: 7,
            ),
            Container(
              width: middle,
              height: height,
              decoration: BoxDecoration(
                color: this.color,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      this.assetPath,
                      height: height - 30,
                      width: height - 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    this.text,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
            ),
            VerticalDashedSeparator(
              backgroundColor: this.color,
              color: Colors.transparent,
              dashWidth: 2,
              dashHeight: 7,
            ),
          ],
        ),
      ),
    );
  }
}
