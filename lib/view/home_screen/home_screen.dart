import 'package:flutter/material.dart';
import 'package:medical/view/home_screen/widgets/screen_selection_widget.dart';
import 'package:medical/view/order_status/order_status.dart';
import 'package:medical/view/order_summary/order_summary.dart';
import 'package:medical/view/patient/patient_detais.dart';
import 'package:medical/view/prescription/prescriptions.dart';
import 'package:medical/view/upload_prescription/upload_prescriptions.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(child: Column(
        children: [
          const Text('Home ', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          ScreenNames(title: 'My Prescription', route: MaterialPageRoute(builder: (context) => const Presciptions(),)),
          const SizedBox(height: 10,),
          ScreenNames(title: 'Upload Prescription', route: MaterialPageRoute(builder: (context) => const UploadPrescriptions(),)),
          const SizedBox(height: 10,),
          ScreenNames(title: 'Select Patiesnt & Address', route: MaterialPageRoute(builder: (context) => const PatientDetails(),)),
          const SizedBox(height: 10,),
          ScreenNames(title: 'Order Summary', route: MaterialPageRoute(builder: (context) => const OrderSummary(),)),
          const SizedBox(height: 10,),
          ScreenNames(title: 'Order Status', route: MaterialPageRoute(builder: (context) => const OrderStatus(),)),
          const SizedBox(height: 10,),

        ],
      ),)),
    );
  }
}
