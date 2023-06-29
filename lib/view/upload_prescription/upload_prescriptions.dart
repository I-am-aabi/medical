import 'package:flutter/material.dart';
import 'package:medical/view/common_widgets/blue_btn.dart';
import 'package:medical/view/common_widgets/screen_title.dart';
import 'package:medical/view/upload_prescription/widgets/mobile_field.dart';
import 'package:medical/view/upload_prescription/widgets/person.dart';
import 'package:medical/view/upload_prescription/widgets/upload_date.dart';
import 'package:medical/view/upload_prescription/widgets/upload_detai.dart';
import 'package:medical/view/upload_prescription/widgets/upload_image.dart';
import 'package:medical/view/upload_prescription/widgets/upload_title.dart';

class UploadPrescriptions extends StatelessWidget {
  const UploadPrescriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: const [
        ScreenTitle(title: 'Upload Prescriptions'),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            children: [
              SelectPerson(),
              SizedBox(
                height: 10,
              ),
              MobileField(),
              SizedBox(
                height: 10,
              ),
              UploadTitle(),
              SizedBox(
                height: 10,
              ),
              UploadDate(),
               SizedBox(
                height: 10,
              ),
              UploadDetail(),
                SizedBox(
                height: 10,
              ),
              UploadImage(),
                 SizedBox(
                height: 10,
              ),
              Bluebtn(title: 'Upload Prescription')

            ],
          ),
        )
      ],
    )));
  }
}
