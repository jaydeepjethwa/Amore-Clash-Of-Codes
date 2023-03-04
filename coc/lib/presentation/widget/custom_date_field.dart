import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:flutter/material.dart';

class CustomDateField extends StatefulWidget {
  final Function(String) setValue;
  const CustomDateField({super.key, required this.setValue});

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  DateTime date = DateTime.now();

  String? finalDate;

  void _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1900),
      lastDate: date,
    ).then((value) {
      if (value != null) {
        setState(() {
          finalDate = formatDate(value);
          widget.setValue(formatDate(value));
        });
      }
    });
  }

  String formatDate(DateTime d) {
    String ans = "";
    (d.day < 9) ? ans = "${ans}0${d.day}" : ans += d.day.toString();
    ans += "-";
    (d.month < 9) ? ans = "${ans}0${d.month}" : ans += d.month.toString();
    ans += "-";
    ans += d.year.toString();
    return ans;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDatePicker(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        width: (getWidth(context) - 60) / 2,
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                finalDate == null ? formatDate(date) : finalDate!,
                style: text3,
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
