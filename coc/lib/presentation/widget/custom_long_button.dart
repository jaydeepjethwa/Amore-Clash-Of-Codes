import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:flutter/material.dart';

class CustomLongButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressedFunction;
  const CustomLongButton(
      {super.key, required this.buttonText, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(5),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Color.fromRGBO(23, 23, 23, 0.11),
        //     blurRadius: 5,
        //   ),
        // ],
      ),
      child: SizedBox(
        width: getWidth(context) - 40,
        height: 45.0,
        child: ElevatedButton(
          onPressed: onPressedFunction,
          child: Text(
            buttonText,
            style: buttonStyle.copyWith(color: black),
          ),
        ),
      ),
    );
  }
}
