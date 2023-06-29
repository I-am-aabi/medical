import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () =>  Navigator.pop(context), icon: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 20,),
          Text(title,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
