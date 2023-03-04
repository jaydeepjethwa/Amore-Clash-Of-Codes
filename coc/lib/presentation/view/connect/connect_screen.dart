import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/connection_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ConnectScreen extends GetView<ConnectionController> {
  final ConnectionController controller;
  const ConnectScreen({
    required this.controller,
    super.key,
  });

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
      body: Container(
        height: getHeight(context),
        padding:
            EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: controller.userList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEAF4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: getWidth(context) - 60,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image(
                                image: const AssetImage("assets/profile.png"),
                                height: getHeight(context) * 0.45,
                                width: getWidth(context) - 80,
                              ),
                            ),
                            verticalSpacing(vs2),
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                controller.userList[index]["name"],
                                style: text1.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                controller.userList[index]["score"],
                                style: text1.copyWith(fontWeight: FontWeight.bold),
                              ),
                                ],
                              ),
                            ),
                            Text(
                              "About Me",
                              style: text2.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              controller.userList[index]["about"],
                              style: text2,
                            ),
                            const Spacer(),
                            SizedBox(
                              width: getWidth(context) - 80,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      controller.getAllConnects();
                                    },
                                    child: Text(
                                      "Meet",
                                      style: buttonStyle,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Chat",
                                      style: buttonStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
