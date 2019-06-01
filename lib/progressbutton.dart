import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State with TickerProviderStateMixin {
  bool isPressed = false;
  int state = 0;
  Animation _animation;
  double width = double.infinity;
  GlobalKey globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.blue,
      elevation: isPressed ? 6.0 : 4.0,
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        key: globalKey,
        height: 48.0,
        width: width,
        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            color: state == 2 ? Colors.green : Colors.blue,
            child: buildText(),
            onPressed: () {},
            onHighlightChanged: (pressed) {
              setState(() {
                isPressed = pressed;
                if (state == 0) {
                  animateButton();
                  print('tapped');
                }
              });
            }),
      ),
    );
  }

  void animateButton() {
    double initialWidth = globalKey.currentContext.size.width;
    var controller =
        AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    _animation = Tween(begin: 1.0, end: 1.0).animate(controller)
      ..addListener(() {
        width = initialWidth - ((initialWidth - 10.0) * _animation.value);
      });
    controller.forward();
    setState(() {
      state = 1;
    });
  }
  Widget buildText() {
    if (state == 0) {
      return Text('Login',style: TextStyle(color: Colors.white),);
    } else if (state == 1) {
      return SizedBox(
        height: 30.0,
        width: 30.0,
        child: CircularProgressIndicator(
          value: null,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      Icon(
        Icons.check,
        color: Colors.black,
      );
    }
  }

}
