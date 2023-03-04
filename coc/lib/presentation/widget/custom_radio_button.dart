import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:flutter/material.dart';

class CustomRadiobutton extends StatelessWidget {
  final String value;
  final String groupValue;
  final bool auto;
  final Function(String?) onCallback;
  const CustomRadiobutton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onCallback,
    this.auto = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: auto ? (getWidth(context) - 40) / 3 : (getWidth(context) / 2.5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onCallback,
            activeColor: primary,
          ),
          Expanded(
            child: Text(
              value,
              style: text3,
            ),
          ),
        ],
      ),
    );
  }
}
