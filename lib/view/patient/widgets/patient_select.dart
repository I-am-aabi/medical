import 'package:flutter/material.dart';
import 'package:medical/view/patient/widgets/add_patient.dart';
import 'package:medical/view/patient/widgets/patient_card.dart';

class PatientSelect extends StatelessWidget {
  const PatientSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          AddPatient(),
          SizedBox(
            width: 10,
          ),
          PatientCard(
            isselected: true,
            discription1: 'GranParent',
            title: 'Jessica',
            discription2: '',
          ),
          SizedBox(
            width: 10,
          ),
          PatientCard(
            isselected: false,
            discription1: 'Children',
            title: 'Jessica',
            discription2: '',
          ),
        ],
      ),
    );
  }
}
