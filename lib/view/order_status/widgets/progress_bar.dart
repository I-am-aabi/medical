import 'package:flutter/material.dart';
import 'package:medical/constants.dart';

class VerticalLinearProgressBar extends StatelessWidget {
  final double progress;
  final double circleSize;
  final Color progressColor;
  // final Color circleColor;

  VerticalLinearProgressBar({
    required this.progress,
    this.circleSize = 16.0,
    this.progressColor = Colors.blue,
    // this.circleColor = const Color.fromARGB(255, 249, 0, 0),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 30,
          height: 300,
          child: RotatedBox(
            quarterTurns: 1,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: -265,
                  right: 20,
                  // width: 0,
                  // top: 0,
                  child: Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: -20,
                  right: 20,
                  // width: 0,
                  // top: 0,
                  child: Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 250,
                  right: 20,
                  // width: 0,
                  // top: 0,
                  child: Container(
                    width: circleSize,
                    height: circleSize,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Call with Pharmacist',
              style: style2,
            ),
            SizedBox(height: 10,),
            Text(
              'Our pharmacist are required to confirm  ',
              style: TextStyle(fontSize: 12),
            ),
            Text(
              'the medicines in your prescription on call',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 65,
            ),
            Text('Free doctor consultation',style: style2,),
            SizedBox(
              height: 115,
            ),
            Text('Track your order',style: style2,)
          ],
        )
      ],
    );
  }
}
