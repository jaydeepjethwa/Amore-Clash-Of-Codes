import 'package:coc/constant/textstyle.dart';
import 'package:coc/presentation/view/prefrences/prefrences2.dart';
import 'package:flutter/material.dart';
import 'package:coc/constant/color.dart';
import 'package:get/get.dart';

import '../../widget/custom_long_button.dart';

class Prefrence extends StatelessWidget {
  const Prefrence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradient1,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Text(
                "What kind of Relationship are you looking for.",
                style: boldHeader,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (fasle) {},
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
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (fasle) {},
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
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: gradient2,
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (fasle) {},
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
             const Spacer(),
              Container(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  backgroundColor: const Color(0xff03dac6),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    // Respond to button press
                    Get.to(const Prefrences2());
                  },
                  label: Text('Next'),
                  icon: Icon(Icons.forward),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
