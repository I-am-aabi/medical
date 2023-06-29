import 'package:flutter/material.dart';

class SelectPerson extends StatelessWidget {
  const SelectPerson({super.key});

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
          Icon(Icons.person),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: 'Select a person',
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
