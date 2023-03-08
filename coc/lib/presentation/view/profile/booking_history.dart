import 'dart:convert';
import 'package:coc/controller/booking_history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../../../constant/color.dart';
import '../../../constant/size.dart';
import '../../../constant/textstyle.dart';

class BookingHistory extends GetView<BookingHistoryController> {
  const BookingHistory({
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
                                Icons.qr_code_scanner,
                                color: primary,
                              ),
                              iconSize: 32.0,
                              onPressed: () async {
                                controller.checkQr(index);
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
