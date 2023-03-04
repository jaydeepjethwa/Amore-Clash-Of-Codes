// ignore_for_file: deprecated_member_use

import 'package:coc/constant/color.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/presentation/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Prefrences2 extends StatelessWidget {
  const Prefrences2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradient1,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          // Text
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Interests",
                    style: boldHeader,
                  ),
                  Text(
                    "Tell us what do you like, so that you get personalized match.",
                    style: appStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Consent Pills
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Creativity",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Art",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Design",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Makeup",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Photography",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Writing",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Craft",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sports",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Yoga",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Running",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Gym",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Football",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Cricket",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Badminton",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stying In",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Video Games",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Gardning",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Cooking",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Board Games",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Banking",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Takeout",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Going Out",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Giga",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Theatre",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Night Club",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Bars",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Karoke",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Festivals",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Travelling",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Beaches",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Spa Weekends",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Road Trips",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Fishing Trips",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Camping",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Hiking",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Music",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Hip Hop",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Rock",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Country",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Classical",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Desi",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Jazz",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food  & Drinks",
                    style: text1.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Wine",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Beer",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Cofee",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Tea",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Vegatarian",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Non-Veg",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color(0xff03dac6),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    // Respond to button press
                    Get.to(const ProfileScreen());
                  },
                  label: Text('Next'),
                  icon: Icon(Icons.forward),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
