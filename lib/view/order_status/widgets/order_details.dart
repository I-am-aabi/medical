import 'package:flutter/material.dart';
import 'package:medical/constants.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails(
      {super.key, required this.title, required this.discription});
  final String title;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: style1,
        ),
        Text(discription,style: style2,)
      ],
    );
  }
}
