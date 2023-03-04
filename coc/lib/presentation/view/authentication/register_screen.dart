import 'package:coc/constant/color.dart';
import 'package:coc/constant/size.dart';
import 'package:coc/constant/textstyle.dart';
import 'package:coc/controller/register_controller.dart';
import 'package:coc/presentation/widget/custom_date_field.dart';
import 'package:coc/presentation/widget/custom_file_picker.dart';
import 'package:coc/presentation/widget/custom_form_field.dart';
import 'package:coc/presentation/widget/custom_long_button.dart';
import 'package:coc/presentation/widget/custom_radio_button.dart';
import 'package:coc/presentation/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 28.0,
            color: primary,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Create Profile",
          style: appStyle,
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomFormField(
                formFieldTitle:
                    "Upload Your college or company ID Card to get the verified tick",
              ),
              CustomFilePicker(
                setValue: (value) {
                  controller.idCard.value = value;
                },
              ),
              const CustomFormField(
                formFieldTitle: "Full Name",
              ),
              CustomTextField(
                capitalization: false,
                textController: controller.nameC,
                hint: "Full Name",
              ),
              const CustomFormField(
                formFieldTitle: "DOB",
              ),
              CustomDateField(
                setValue: (value) {
                  controller.date.value = value;
                },
              ),
              const CustomFormField(
                formFieldTitle: "Email",
              ),
              CustomTextField(
                capitalization: false,
                textController: controller.emailC,
                hint: "Email",
              ),
              const CustomFormField(
                formFieldTitle: "Phone Number",
              ),
              CustomTextField(
                capitalization: false,
                textController: controller.phoneC,
                hint: "Phone",
                readOnly: true,
              ),
              const CustomFormField(formFieldTitle: "Gender"),
              Obx(
                () => Row(
                  children: [
                    CustomRadiobutton(
                      value: "Male",
                      groupValue: controller.gender.value,
                      onCallback: (value) {
                        if (value != null) {
                          controller.gender.value = value;
                        }
                      },
                    ),
                    CustomRadiobutton(
                      value: "Female",
                      groupValue: controller.gender.value,
                      onCallback: (value) {
                        if (value != null) {
                          controller.gender.value = value;
                        }
                      },
                    ),
                  ],
                ),
              ),
              const CustomFormField(
                formFieldTitle: "About your Self",
              ),
              CustomTextField(
                capitalization: false,
                textController: controller.aboutC,
                hint: "About your self (Max 200 Words)",
                minLines: 5,
                maxLines: 10,
              ),
              verticalSpacing(vs2),
              CustomLongButton(
                buttonText: "Create profile",
                onPressedFunction: () {
                  // Get.toNamed(
                  //   "/chat",
                  //   arguments: [
                  //     {
                  //       "id1": "1",
                  //     },
                  //     {
                  //       "id2": "2",
                  //     },
                  //   ],
                  // );
                  controller.createProfile();
                },
              ),
              verticalSpacing(vs1),
            ],
          ),
        ),
      ),
    );
  }
}
