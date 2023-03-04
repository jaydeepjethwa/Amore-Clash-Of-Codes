import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/prefernece_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:coc/constant/color.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PreferenceScreen1 extends GetView<PreferenceController1> {
  const PreferenceScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: 20.0),
          child: Column(
            children: [
              Text(
                "What kind of Relationship are you looking for.",
                style: boldHeader,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    color: gradient1,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: controller.date.value,
                        onChanged: (value) {
                          if (value != null) {
                            controller.handleDate(value);
                          }
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date",
                                style:
                                    text1.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Find that spark in an empowered community",
                                style: appStyle,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    color: gradient1,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: controller.bff.value,
                        onChanged: (value) {
                          if (value != null) {
                            controller.handleBFF(value);
                          }
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BFF",
                                style:
                                    text1.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Make new friends at every stage of your life.",
                                style: appStyle,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    color: gradient1,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: controller.bizz.value,
                        onChanged: (value) {
                          if (value != null) {
                            controller.handleBizz(value);
                          }
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bizz",
                                style:
                                    text1.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Find that spark in an empowered community",
                                style: appStyle,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  backgroundColor: secondary,
                  foregroundColor: black,
                  onPressed: () {
                    controller.handleSave();
                  },
                  label: const Text('Next'),
                  icon: const Icon(Icons.forward),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
