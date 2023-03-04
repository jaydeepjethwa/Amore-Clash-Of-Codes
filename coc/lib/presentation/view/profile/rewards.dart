import 'package:coc/constant/color.dart';
import 'package:coc/presentation/widget/custom_long_button.dart';
import 'package:flutter/material.dart';

import '../../../constant/textstyle.dart';

class Rewards extends StatelessWidget {
  const Rewards({super.key});

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
            const Padding(padding: EdgeInsets.only(left: 10.0)),
            Text(
              "Rewards",
              style: appStyle.copyWith(
                  fontSize: 20.0, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 20,
                  color: gradient2,
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: boldHeader.copyWith(fontSize: 40.0),
                            ),
                            const Text("Amore Hearts")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20,
                  color: gradient2,
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: boldHeader.copyWith(fontSize: 40.0),
                            ),
                            const Text("No. Rewards Earned")
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomLongButton(
                buttonText: "Redeem Hearts", onPressedFunction: () {}),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              "History",
              style: boldHeader,
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: gradient2, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Checkout 20 Profile",
                        style: text1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "40 💗",
                        style: text1,
                      ),
                      // Icon(Icons.heart_broken)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
