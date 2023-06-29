import 'package:flutter/material.dart';
import 'package:medical/view/common_widgets/blue_btn.dart';
import 'package:medical/view/common_widgets/screen_title.dart';
import 'package:medical/view/order_status/widgets/order_details.dart';
import 'package:medical/view/order_status/widgets/progress_bar.dart';


class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        const ScreenTitle(title: 'Order Status'),
        // const SizedBox(
        //   height: 20,
        // ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.white70),
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const OrderDetails(
                      title: 'We have recieved your order!',
                      discription: 'WE will in touch with you shortly'),
                      const SizedBox(
                        height: 20,
                      ),
                  const OrderDetails(
                      title: 'Order Id :547963',
                      discription: 'Estimated Delivery Date: 24-27 May'),
                      const SizedBox(
                        height: 25,
                      ),
                      // VerticalProgressBar()
                      // Progressbar2(value: 0.75)
                      VerticalLinearProgressBar(progress: 0.45),
                      const SizedBox(height: 20,),
                      const Bluebtn(title: 'Call Now')
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
