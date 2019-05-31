import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  Progress({Key key}) : super(key: key);

  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> with SingleTickerProviderStateMixin {
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
            color: Colors.blue,
            child: Text('Login'),
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

  void animateButton() {
    double initialWidth = globalKey.currentContext.size.width;
    var controller = AnimationController(duration: Duration(milliseconds: 3000),vsync: this);
   Tween(begin: 0.0,end: 1.0)
   ..animate(controller).addListener(
    (){
        width = initialWidth - ((initialWidth - 48.0) * _animation.value);
      }
    );
  }
}
