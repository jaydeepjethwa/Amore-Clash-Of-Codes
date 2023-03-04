import 'package:coc/constant/color.dart';
import 'package:coc/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends GetView<BottomNavigationController> {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.screenList[controller.currentIndex.value],
      ),
      extendBody: true,
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: primary,
                spreadRadius: 0,
                blurRadius: 1,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            child: BottomNavigationBar(
              backgroundColor: white,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              selectedItemColor: primary,
              unselectedItemColor: grey,
              showUnselectedLabels: true,
              onTap: (value) {
                controller.handleNavigation(value);
              },
              currentIndex: controller.currentIndex.value,
              items: const [
                BottomNavigationBarItem(
                  label: "Events",
                  icon: Icon(
                    Icons.event,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Connect",
                  icon: Icon(
                    Icons.monitor_heart_sharp,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(
                    Icons.person_outline_outlined,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
