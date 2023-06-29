import 'package:flutter/material.dart';

class AddPatient extends StatelessWidget {
  const AddPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 100,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.add_circle_outline,
              color: Colors.orange,
              size: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Add',textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7),
              child: Text('Patient',textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}