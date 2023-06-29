import 'package:flutter/material.dart';

class Progressbar2 extends StatelessWidget {
  final double value;
  final Color color;
  final double height;
  final int numberOfCircles;
  final double circleRadius;
  final Color circleColor;
  final double barWidth;
  final Color backgroundColor;

  Progressbar2({
    required this.value,
    this.color = Colors.blue,
    this.height = 300.0,
    this.numberOfCircles = 3,
    this.circleRadius = 8.0,
    this.circleColor = Colors.blue,
    this.barWidth = 1.0,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2, // Rotate by 90 degrees counter-clockwise
      child: SizedBox(
        height: height,
        child: Stack(
          children: [
            Container(
              height: circleRadius * 2,
              width: barWidth,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(circleRadius),
              ),
            ),
            FractionallySizedBox(
              heightFactor: value,
              widthFactor: 0.025,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(circleRadius),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                numberOfCircles,
                (index) => Container(
                  width: circleRadius * 2,
                  height: circleRadius * 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: circleColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
