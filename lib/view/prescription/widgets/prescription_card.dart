import 'package:flutter/material.dart';

class PrescriptionCard extends StatelessWidget {
  const PrescriptionCard(
      {super.key,
      required this.date,
      required this.time,
      required this.status,
      required this.path});
  final String date;
  final String time;
  final int status;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300, width: 0.5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/$path',
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Uploaded',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    date,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    time,
                                    style: const TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                          if (status == 1)
                            Text(
                              'Submitted',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.orange.shade300),
                            )
                          else if (status == 2)
                            Text(
                              'Approved',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.green.shade300),
                            )
                          else
                            Text(
                              'Denied',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.red.shade300),
                            )
                        ],
                      ),
                    )
                  ],
                ),
                IconButton(
                    iconSize: 30,
                    splashRadius: 15,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outlined,
                      color: Colors.orange,
                      size: 30,
                    ))
              ]),
        ),
      ),
    );
  }
}
