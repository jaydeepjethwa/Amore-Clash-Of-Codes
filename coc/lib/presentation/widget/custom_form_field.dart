import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String formFieldTitle;
  const CustomFormField({super.key, required this.formFieldTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, bottom: 5.0),
      child: SizedBox(
        width: getWidth(context),
        child: Text(
          formFieldTitle,
          style: textfieldHeader,
        ),
      ),
    );
  }
}
