import 'package:flutter/material.dart';

class DeliveryDate extends StatelessWidget {
  const DeliveryDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: const Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Estimate Delivery',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
            Text('24-25 May',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
