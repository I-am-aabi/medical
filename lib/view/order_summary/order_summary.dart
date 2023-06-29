import 'package:flutter/material.dart';
import 'package:medical/constants.dart';
import 'package:medical/view/common_widgets/screen_title.dart';
import 'package:medical/view/order_summary/widget/add_image_btn.dart';
import 'package:medical/view/common_widgets/blue_btn.dart';
import 'package:medical/view/order_summary/widget/custom_button.dart';
import 'package:medical/view/order_summary/widget/delivary_adress.dart';
import 'package:medical/view/order_summary/widget/delivery_date.dart';
import 'package:medical/view/order_summary/widget/payment_type.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: const [
          ScreenTitle(title: 'OrderSummary'),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
          'Medicines',
          style: style1,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          CostumButton(text: 'Edit Medicine'),
          CostumButton(text: 'Add Medicine'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
          'Prescriptions',
          style: style1,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          AddImage(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
          'Payment Methods',
          style: style1,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          PaymentType(),
            SizedBox(
            height: 25,
          ),
          DeliveryDate(),
            SizedBox(
            height: 25,
          ),
          DeliveryAdress(),
          SizedBox(height: 20,),
          Bluebtn(title: 'Continue',)
        ],
      )),
    );
  }
}
