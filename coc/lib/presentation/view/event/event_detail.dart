import 'dart:convert';

import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/event_controller.dart';
import 'package:coc/model/event_model.dart';
import 'package:coc/presentation/widget/custom_long_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetails extends StatefulWidget {
  final EventController controller;
  final EventModel event;
  const EventDetails(
      {super.key, required this.controller, required this.event});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  void initState() {
    super.initState();
    widget.controller.checkReservedStatus(widget.event);
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Text(widget.event.name, style: boldHeader),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Text(
                            (widget.event.capacity! - widget.event.available!)
                                .toString(),
                            style: text1,
                          ),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          Icon(
                            Icons.people,
                            color: primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.memory(
                  const Base64Decoder().convert(
                    widget.event.photo,
                  ),
                  width: getWidth(context) - 100,
                ),
                verticalSpacing(vs1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Event Details", style: boldHeader),
                    Text(
                      widget.event.description,
                      style: text3,
                      textAlign: TextAlign.justify,
                    ),
                    verticalSpacing(vs1),
                    Row(
                      children: [
                        Text(
                          "Location : ",
                          style: text1,
                        ),
                        Text(
                          widget.event.address,
                          style: appStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Date : ",
                          style: text1,
                        ),
                        Text(
                          widget.event.scheduledOn.toString().split(" ")[0],
                          style: appStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Time : ",
                          style: text1,
                        ),
                        Text(
                          widget.event.scheduledOn
                              .toString()
                              .split(" ")[1]
                              .split(".")[0],
                          style: appStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Seat Left : ",
                          style: text1,
                        ),
                        Text(
                          widget.event.available.toString(),
                          style: appStyle,
                        )
                      ],
                    ),
                    verticalSpacing(vs2),
                  ],
                ),
                Obx(
                  () => CustomLongButton(
                    buttonText: (widget.controller.isReserved.value)
                        ? "Reserved"
                        : "Reserve a Spot",
                    onPressedFunction: () {
                      if (!widget.controller.isReserved.value) {
                        widget.controller.bookEvent(widget.event);
                      }
                    },
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
