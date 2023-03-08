import 'dart:convert';

import 'package:coc/constant/color.dart';
import 'package:coc/constant/constant.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/bottom_navigation_controller.dart';
import 'package:coc/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 28.0,
            color: primary,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Profile",
          style: appStyle,
        ),
        backgroundColor: white,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: getHeight(context) + kBottomNavigationBarHeight,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _profileItem(
                "Profile",
                Icons.person,
                () {
                  Get.toNamed("/profile");
                },
              ),
              _profileItem(
                "Booking History",
                Icons.history,
                () {
                  Get.toNamed("/bookingHistory");
                },
              ),
              _profileItem(
                "Rewards",
                Icons.attach_money_outlined,
                () {
                  Get.toNamed("/reward");
                },
              ),
              _profileItem(
                "Prefernces",
                Icons.room_preferences_rounded,
                () {
                  Get.toNamed("/preference1")!.then((value) {
                    BottomNavigationController controller =
                        Get.find<BottomNavigationController>();
                    controller.update();
                  });
                },
              ),
              _profileItem(
                "Live Event",
                Icons.feedback,
                () {
                  String? eventId = storage.read("liveEvent");
                  if (eventId == null) {
                    DialogHelper.showSnackbar("No Live Events");
                    return;
                  }
                  Get.toNamed("/eventConnectMeet");
                },
              ),
              _profileItem(
                "Chat",
                Icons.start,
                () async {
                  Get.toNamed("allChat");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileItem(String itemName, IconData icon, VoidCallback handletap) {
    return GestureDetector(
      onTap: handletap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primary, width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32.0,
              ),
              horizontalSpacing(5.0),
              Expanded(
                child: Text(
                  itemName,
                  style: text3.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
              )
            ],
          ),
        ),
      ),
    );
  }
}
