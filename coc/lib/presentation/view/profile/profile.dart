// import 'package:coc/constant/color.dart';
import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              "Profile",
              style: appStyle.copyWith(
                  fontSize: 20.0, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: gradient1),
                  color: primary),
              child: Row(
                children: [
                  Text(
                    "Full Name : ",
                    style: text1.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "ABC XYZ",
                    style: appStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: gradient1),
                  color: primary),
              child: Row(
                children: [
                  Text(
                    "Age : ",
                    style: text1.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "23",
                    style: appStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: gradient1),
                  color: primary),
              child: Row(
                children: [
                  Text(
                    "Phone : ",
                    style: text1.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "0123456789",
                    style: appStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: gradient1),
                  color: primary),
              child: Row(
                children: [
                  Text(
                    "Gender : ",
                    style: text1.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Male",
                    style: appStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
