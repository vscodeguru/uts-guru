
import 'package:flutter/material.dart';

class MyVerticalDashedSeparator extends StatelessWidget {
  final double dashWidth;
  final double dashHeight;
  final Color color;
  final Color backgroundColor;

  const MyVerticalDashedSeparator(
      {this.dashWidth = 1,
      this.dashHeight = 10,
      this.color = Colors.black,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxHeight = constraints.constrainHeight();
        final dashCount = (boxHeight / (1 * dashHeight)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: (_ % 2 == 0) ? color : backgroundColor),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
        );
      },
    );
  }
}