import 'dart:convert';

import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/hotel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HotelScreen extends GetView<HotelController> {
  const HotelScreen({super.key});

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: controller.selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      controller.selectedDate = picked;
      await _selectTime(context);
    }
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: controller.selectedTime,
    );
    if (picked != null) {
      controller.selectedTime = picked;
    }
  }

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
        () => (controller.hotelList.isEmpty)
            ? Container(
                child: Center(
                  child: Text(
                    "Hotels are Laoding.....",
                    style: text1.copyWith(color: primary),
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.hotelList.length,
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
                                controller.hotelList[index].photo,
                              ),
                              width: 120,
                            ),
                            horizontalSpacing(10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.hotelList[index].name,
                                    style: text2,
                                  ),
                                  Text(
                                    controller.hotelList[index].address,
                                    style: text3,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.book,
                                color: primary,
                              ),
                              iconSize: 32.0,
                              onPressed: () async {
                                await _selectDate(context);
                                controller
                                    .bookHotel(controller.hotelList[index]);
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
