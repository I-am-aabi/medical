import 'package:flutter/material.dart';
import 'package:medical/view/common_widgets/screen_title.dart';
import 'package:medical/view/prescription/widgets/prescription_card.dart';

class Presciptions extends StatelessWidget {
  const Presciptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: const [
          ScreenTitle(
            title: 'My Presciptions',
          ),
          // SizedBox(height: 20,),
          PrescriptionCard(
            date: '5 March 2020',
            path: 'p1.jpeg',
            status: 1,
            time: '6:30 PM',
          ),
          SizedBox(
            height: 10,
          ),
          PrescriptionCard(
            date: '8 March 2020',
            path: 'p2.png',
            status: 2,
            time: '5:00 PM',
          ),
          SizedBox(
            height: 10,
          ),
          PrescriptionCard(
            date: '2 March 2020',
            path: 'p3.webp',
            status: 3,
            time: '10:30 AM',
          ),
          SizedBox(
            height: 10,
          ),
          PrescriptionCard(
            date: '1 March 2020',
            path: 'p4.png',
            status: 1,
            time: '7:00 AM',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
