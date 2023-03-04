// import 'package:coc/constant/color.dart';
import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/presentation/view/event/event.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    IconButton(
                      icon: const Icon(Icons.forward_rounded),
                      onPressed: () {
                        Get.to(const EventDetails());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
