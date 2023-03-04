// import 'package:coc/constant/color.dart';
import 'dart:convert';

import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/event_controller.dart';
import 'package:coc/presentation/view/event/event_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends GetView<EventController> {
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
      body: Obx(
        () => (controller.eventList.isEmpty)
            ? Container(
                child: Center(
                  child: Text(
                    "Events are Laoding.....",
                    style: text1.copyWith(color: primary),
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.eventList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding, vertical: 10.0),
                    child: Container(
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
                            Image.memory(
                              const Base64Decoder().convert(
                                controller.eventList[index].photo,
                              ),
                              width: 120,
                            ),
                            horizontalSpacing(10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.eventList[index].name,
                                    style: text2,
                                  ),
                                  Text(
                                    controller.eventList[index].address,
                                    style: text3,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.forward_rounded,
                                color: primary,
                              ),
                              iconSize: 32.0,
                              onPressed: () {
                                Get.to(
                                  EventDetails(
                                    controller: controller,
                                    event: controller.eventList[index],
                                  ),
                                )?.then((value) {
                                  controller.eventList.clear();
                                  controller.getAllvents();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
