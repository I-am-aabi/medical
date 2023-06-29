import 'package:flutter/material.dart';

class UploadDate extends StatelessWidget {
  const UploadDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 8,),
          Icon(Icons.calendar_month),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: 'MM-DD-YYYY',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                // Add any additional desired decoration properties
              ),
            ),
          ),
        ],
      ),
    );
  }
}