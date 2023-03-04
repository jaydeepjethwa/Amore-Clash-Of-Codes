// ignore_for_file: deprecated_member_use

import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/preference_2_controller.dart';
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "art");
                              controller.art.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.art.value) ? primary : white,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "design");
                              controller.design.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.design.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Design",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "makeup");
                              controller.makeup.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.makeup.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Makeup",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "photography");
                              controller.photography.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.photography.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Photography",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "writing");
                              controller.writing.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.writing.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Writing",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "creativity", "craft");
                              controller.craft.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.craft.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Craft",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("sports", "yoga");
                              controller.yoga.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.yoga.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Yoga",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "sports", "running");
                              controller.running.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.running.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Running",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("sports", "gym");
                              controller.gym.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.gym.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Gym",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "sports", "football");
                              controller.football.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.football.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Football",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "sports", "cricket");
                              controller.cricket.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.cricket.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Cricket",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "sports", "badminton");
                              controller.badminton.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.badminton.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Badminton",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "video games");
                              controller.video.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.video.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Video Games",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "gardening");
                              controller.gardning.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.gardning.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Gardning",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "cooking");
                              controller.cooking.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.cooking.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Cooking",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "board games");
                              controller.board.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.board.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Board Games",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "banking");
                              controller.banking.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.banking.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Banking",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "staying", "takeout");
                              controller.takeout.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.takeout.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Takeout",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "giga");
                              controller.giga.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.giga.value) ? primary : white,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "theatre");
                              controller.theatre.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.theatre.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Theatre",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "night club");
                              controller.nightClub.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.nightClub.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Night Club",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "bars");
                              controller.bars.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.bars.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Bars",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "karoke");
                              controller.karoke.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.karoke.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Karoke",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "festivals");
                              controller.festivals.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.festivals.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Festivals",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "goingout", "beaches");
                              controller.beaches.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.beaches.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Beaches",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "travelling", "spa weekends");
                              controller.spa.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.spa.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Spa Weekends",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "travelling", "road trips");
                              controller.roadTrips.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.roadTrips.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Road Trips",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "travelling", "fishing trips");
                              controller.fishing.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.fishing.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Fishing Trips",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "travelling", "campings");
                              controller.camping.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.camping.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Camping",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "travelling", "hiking");
                              controller.hiking.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.hiking.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Hiking",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "music", "hip hop");
                              controller.hipHop.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.hipHop.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Hip Hop",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("music", "rock");
                              controller.rock.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.rock.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Rock",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "music", "country");
                              controller.country.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.country.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Country",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "music", "classical");
                              controller.classical.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.classical.value)
                                  ? primary
                                  : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Classical",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("music", "desi");
                              controller.desi.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.desi.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Desi",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("music", "jazz");
                              controller.jazz.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.jazz.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Jazz",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("food", "wine");
                              controller.wine.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.wine.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Wine",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("food", "beer");
                              controller.bear.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.bear.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Beer",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("food", "coffee");
                              controller.cofee.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.cofee.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Cofee",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("food", "tea");
                              controller.tea.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.tea.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Tea",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton(
                                  "food", "vegetarian");
                              controller.veg.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary: (controller.veg.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Vegetarian",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller.handleClickOnButton("food", "non-veg");
                              controller.nonVeg.value = true;
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              primary:
                                  (controller.nonVeg.value) ? primary : white,
                              shape: const StadiumBorder(),
                            ),
                            child: Text("Non-Veg",
                                style: text3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
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
