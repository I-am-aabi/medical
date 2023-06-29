import 'package:flutter/material.dart';
import 'package:medical/constants.dart';

class DeliveryAdress extends StatelessWidget {
  const DeliveryAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Deliver To',style: style1,),
          Text('87 Great North Road, ALTON',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black87
          ),)
        ],
      ),
    );
  }
}