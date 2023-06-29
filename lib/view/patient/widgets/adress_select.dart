import 'package:flutter/material.dart';
import 'package:medical/view/patient/widgets/add_adress.dart';
import 'package:medical/view/patient/widgets/patient_card.dart';

class AdressSelect extends StatelessWidget {
  const AdressSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          AddAdress(),
          SizedBox(
            width: 10,
          ),
          PatientCard(
            isselected: true,
            discription1: '87 Great North',
            title: 'Home',
            discription2: 'Road, ALTON',
          ),
          SizedBox(
            width: 10,
          ),
          PatientCard(
            isselected: false,
            discription1: '4310 Clover',
            title: 'Company',
            discription2: 'Colarado Street',
          ),
        ],
      ),
    );
  }
}