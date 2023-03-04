import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/login_controller.dart';
import 'package:coc/presentation/widget/custom_form_field.dart';
import 'package:coc/presentation/widget/custom_long_button.dart';
import 'package:coc/presentation/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          color: white,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/logo.png"),
                width: 200.0,
                height: 200.0,
              ),
              verticalSpacing(vs1),
              const CustomFormField(
                formFieldTitle: "Enter Phone Number to get started",
              ),
              verticalSpacing(vs1),
              CustomTextField(
                capitalization: false,
                maxCharacters: 10,
                keyboardType: TextInputType.phone,
                textController: controller.phoneC,
                hint: "Phone Number",
              ),
              verticalSpacing(vs2),
              CustomLongButton(
                buttonText: "Login",
                onPressedFunction: () {
                  controller.handleLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
