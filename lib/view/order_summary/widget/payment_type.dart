import 'package:flutter/material.dart';
import 'package:medical/constants.dart';
 bool visible1 = true;
    bool visible2 = false;
class PaymentType extends StatefulWidget {
  const PaymentType({super.key});

  @override
  State<PaymentType> createState() => _PaymentTypeState();
}

class _PaymentTypeState extends State<PaymentType> {
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  visible1 = true;
                  visible2 = false;
                });
              },
              child: PaymentWidget(
                icon: Icons.attach_money,
                title: 'Cash',
                visible: visible1,
              )),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.grey,
            height: 1.0,
            thickness: 0.5,
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                visible2 = true;
                visible1 = false;
              });
            },
            child: PaymentWidget(
              icon: Icons.credit_card,
              title: 'Pay With Card',
              visible: visible2,
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentWidget extends StatelessWidget {
  const PaymentWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.visible});
  final IconData icon;
  final String title;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: style1,
            )
          ],
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          child: Visibility(
            visible: visible,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.done,
                size: 10,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
