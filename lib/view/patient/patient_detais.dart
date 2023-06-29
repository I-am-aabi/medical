import 'package:flutter/material.dart';
import 'package:medical/constants.dart';
import 'package:medical/view/common_widgets/blue_btn.dart';
import 'package:medical/view/common_widgets/screen_title.dart';
import 'package:medical/view/order_summary/widget/payment_type.dart';
import 'package:medical/view/patient/widgets/adress_select.dart';
import 'package:medical/view/patient/widgets/patient_select.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ListView(
      children: const [
        ScreenTitle(title: 'Select Patient & Adress'),
        // SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Patient ',style: style1,),
              SizedBox(height: 20,),
              PatientSelect(),
              SizedBox(height: 20,),
              Text('Adress',style: style1),
              SizedBox(height: 20,),
              AdressSelect(),
              SizedBox(height: 20,),
              Text('Payment Methods',style: style1),
              SizedBox(height: 20,),
              PaymentType(),
              SizedBox(height: 20,),
              Bluebtn(title: 'Continue')
            ],
          ),
          
        
        ),
      ],
    )));
  }
}
