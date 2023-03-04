import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/size.dart';
import '../../../constant/textstyle.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Padding(padding: const EdgeInsets.only(left: 10.0)),
            Text(
              "Booking History",
              style: appStyle.copyWith(
                  fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: getWidth(context) - 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage("assets/logo.png"),
                      width: 60,
                    ),
                    SizedBox(
                      height: 50.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Bumble Bee",
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            "Mumbai",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
