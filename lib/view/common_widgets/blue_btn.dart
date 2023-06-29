import 'package:flutter/material.dart';

class Bluebtn extends StatelessWidget {
  const Bluebtn({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 71, 163, 209),
              borderRadius: BorderRadius.circular(15),
            ),
            child:  Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
