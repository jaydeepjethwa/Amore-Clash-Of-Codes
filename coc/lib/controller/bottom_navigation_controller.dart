import 'package:coc/controller/connection_controller.dart';
import 'package:coc/presentation/view/connect/connect_screen.dart';
import 'package:coc/presentation/view/event/event_screen.dart';
import 'package:coc/presentation/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  List<Widget> screenList = [
    const EventScreen(),
    ConnectScreen(controller: Get.put(ConnectionController())),
    const ProfileScreen(),
  ];

  void handleNavigation(int index) {
    currentIndex.value = index;
  }
}
