import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  const PatientCard(
      {super.key,
      required this.isselected,
      required this.title,
      required this.discription1,
      required this.discription2});
  final bool isselected;
  final String title;
  final String discription1;
  final String discription2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 180,
      decoration: BoxDecoration(
          color: isselected ? Colors.orange : Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: isselected ? Colors.white : Colors.black),
                ),
                Text(
                  discription1,
                  style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                      color: isselected ? Colors.white : Colors.black),
                ),
                Text(
                  discription2,
                  style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                      color: isselected ? Colors.white : Colors.black),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: isselected ? Colors.white : Colors.black),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.done,
                    size: 20,
                    color: Colors.orange,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
