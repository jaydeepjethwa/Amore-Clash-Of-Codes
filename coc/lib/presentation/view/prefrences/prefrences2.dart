// ignore_for_file: deprecated_member_use

import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/preference_2_controller.dart';
import 'package:coc/presentation/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreferenceScreen2 extends GetView<PreferenceController2> {
  const PreferenceScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: 10.0),
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
                    children: [
                      // Pill shaped
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.handleClickOnButton("creativity", "art");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            "Art",
                            style: text3.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.handleClickOnButton(
                                "creativity", "design");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "creativity", "makeup");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "creativity", "photography");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "creativity", "writing");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "creativity", "craft");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("sports", "yoga");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("sports", "running");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("sports", "gym");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "sports", "football");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("sports", "cricket");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "sports", "badminton");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "video games");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "gardening");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "cooking");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "board games");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "banking");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "staying", "takeout");
                          },
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
              const SizedBox(
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
                          onPressed: () {
                            controller.handleClickOnButton("goingout", "giga");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text(
                            "Giga",
                            style: text3.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.handleClickOnButton(
                                "goingout", "theatre");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "goingout", "night club");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("goingout", "bars");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "goingout", "karoke");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "goingout", "festivals");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "goingout", "beaches");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "travelling", "spa weekends");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "travelling", "road trips");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "travelling", "fishing trips");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "travelling", "campings");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "travelling", "hiking");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("music", "hip hop");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("music", "rock");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("music", "country");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "music", "classical");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("music", "desi");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("music", "jazz");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("food", "wine");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("food", "beer");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("food", "coffee");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton("food", "tea");
                          },
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
                          onPressed: () {
                            controller.handleClickOnButton(
                                "food", "vegetarian");
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            primary: Colors.white,
                            shape: const StadiumBorder(),
                          ),
                          child: Text("Vegetarian",
                              style: text3.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.handleClickOnButton("food", "non-veg");
                          },
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
                  backgroundColor: secondary,
                  foregroundColor: black,
                  onPressed: () {
                    controller.handleSubmit();
                  },
                  label: const Text('Next'),
                  icon: const Icon(Icons.forward),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
