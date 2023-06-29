import 'package:flutter/material.dart';

class ScreenNames extends StatelessWidget {
  const ScreenNames({super.key, required this.title, required this.route});
  final String title;
  final MaterialPageRoute route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, route),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white70,
          borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(title,style: const TextStyle(
              fontSize: 15
            ),),
          ),
        ),
      ),
    );
  }
}
