import 'package:coc/constant/textstyle.dart';
import 'package:coc/presentation/view/prefrences/prefrences1.dart';
import 'package:coc/presentation/widget/custom_long_button.dart';
import 'package:flutter/material.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:get/get.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

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
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Text("Event Name", style: boldHeader),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Text("200", style: text1),
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          const Icon(Icons.people)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage("assets/logo.png"),
                      width: 300,
                      height: 300,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Event Details", style: boldHeader),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Location : ",
                          style: text1,
                        ),
                        Text(
                          "Mumbai, Maharashtra",
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
                          "5th March 2023",
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
                          "From 7 pm onword",
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
                          "100",
                          style: appStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Contact : ",
                          style: text1,
                        ),
                        Text(
                          "0123456789",
                          style: appStyle,
                        )
                      ],
                    ),
                  ],
                ),
                CustomLongButton(
                    buttonText: "Reserve a Spot",
                    onPressedFunction: () {
                      Get.to(const Prefrence());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
