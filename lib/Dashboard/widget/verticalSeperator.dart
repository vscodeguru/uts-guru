import 'package:flutter/material.dart';

class VerticalDashedSeparator extends StatelessWidget {
  final double dashWidth;
  final double dashHeight;
  final Color color;
  final Color backgroundColor;
  final bool startWithBackgroundColor;

  const VerticalDashedSeparator(
      {this.dashWidth = 1,
      this.dashHeight = 10,
      this.color = Colors.black,
      this.backgroundColor = Colors.white,
      this.startWithBackgroundColor = true});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxHeight = constraints.constrainHeight();
        final dashCount = (boxHeight / (1 * dashHeight)).floor();
        return Flex(
          children: List.generate(
            dashCount,
            (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color:
                          (_ % 2 == ((this.startWithBackgroundColor) ? 0 : 2))
                              ? color
                              : backgroundColor),
                ),
              );
            },
          ),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
        );
      },
    );
  }
}
