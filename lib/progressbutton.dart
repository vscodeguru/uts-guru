import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Progress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProgressState();
}

class _ProgressState extends State<Progress>
    with SingleTickerProviderStateMixin{
  bool isPressed = false;
  int state = 0;
  Animation animation;

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
            color: Colors.blue,
            child: buildText(),
            onPressed: () {},
            onHighlightChanged: (pressed) {
              setState(() {
                isPressed = pressed;
                if (state == 0) {
                  animateButton();
                }
              });
            }),
      ),
    );
  }

  Widget buildText() {
    if (state == 0) {
      return Text('Login');
    } else if (state == 1) {
      return CircularProgressIndicator(
        value: null,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      Icon(
        Icons.check,
        color: Colors.black,
      );
    }
  }

  void animateButton() {
    double initialWidth = globalKey.currentContext.size.width;
    var controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        width = initialWidth - ((initialWidth - 48.0) * animation.value);
      });
    controller.forward();
  }
}
