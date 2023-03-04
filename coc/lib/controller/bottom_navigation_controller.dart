import 'package:coc/presentation/view/connect/connect_screen.dart';
import 'package:coc/presentation/view/event/event_screen.dart';
import 'package:coc/presentation/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  List<Widget> screenList = [
    const EventScreen(),
    const ConnectScreen(),
    const ProfileScreen(),
  ];

  void handleNavigation(int index) {
    currentIndex.value = index;
  }
}
