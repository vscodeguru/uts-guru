import 'package:flutter/material.dart';

import 'Registration/topup.dart';
import 'Utils/helper.dart';

class StartAnimation extends StatefulWidget {
  StartAnimation({Key key, this.buttonController})
      : shrinkAnimationButton = new Tween(begin: 320.0, end: 70.0).animate(
          CurvedAnimation(
            parent: buttonController,
            curve: Interval(0.0, 0.150),
          ),
        ),
        ZoomAnimation = new Tween(begin: 10.0, end: 900.0).animate(
          CurvedAnimation(
              parent: buttonController,
              curve: Interval(0.550, 0.999, curve: Curves.bounceInOut)),
        ),
        super(key: key);
  final AnimationController buttonController;
  final Animation shrinkAnimationButton;

  final Animation ZoomAnimation;
  Widget _buildAnimation(BuildContext context, Widget child) {
    return Center(
      child: ZoomAnimation.value <= 340
          ? SizedBox(
              width: shrinkAnimationButton.value,
              // child:  Progress()
              child: RaisedButton(
                onPressed: () {},
                elevation: 6.0,
                color: Helper.hexColor('#4ca7d4'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: shrinkAnimationButton.value > 75.0
                    ? Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      )
                    : SizedBox(
                        height: 25.0,
                        width: 25.0,
                        child: CircularProgressIndicator(
                          strokeWidth: 1.0,
                          value: null,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
              ),
            )
           : Column(
              children: <Widget>[
                Container(
              width: ZoomAnimation.value,
              height: ZoomAnimation.value,
              decoration: BoxDecoration(
                color: Helper.hexColor('#4ca7d4'),
                shape: ZoomAnimation.value < 600
                    ? BoxShape.circle
                    : BoxShape.rectangle,
              ),
             
            ),
              ],
            )
       
    );
  }

  _StartAnimationState createState() => _StartAnimationState();

}

class _StartAnimationState extends State<StartAnimation> {
  @override
  Widget build(BuildContext context) {
    widget.buttonController.addListener(
      () {
        if (widget.ZoomAnimation.isCompleted) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => TopupWidget()));
        }
      },
    );
    return new AnimatedBuilder(
      builder: widget._buildAnimation,
      animation: widget.buttonController,
    );
  }
}