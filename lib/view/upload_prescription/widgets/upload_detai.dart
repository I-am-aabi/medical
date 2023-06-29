import 'package:flutter/material.dart';

class UploadDetail extends StatelessWidget {
  const UploadDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: const Expanded(
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: 'Enter Prescription Discription',
              
              hintStyle: TextStyle(color: Colors.black),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              // Add any additional desired decoration properties
            ),
          ),
        ),
      ),
    );
  }
}