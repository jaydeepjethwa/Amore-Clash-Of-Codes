import 'package:get/get.dart';

class PreferenceController1 extends GetxController {
  var bff = false.obs;
  var date = false.obs;
  var bizz = false.obs;

  void handleBFF(bool value) {
    if (value) {
      date.value = false;
      bizz.value = false;
      bff.value = value;
    } else {
      bff.value = value;
    }
  }

  void handleBizz(bool value) {
    if (value) {
      date.value = false;
      bff.value = false;
      bizz.value = value;
    } else {
      bizz.value = value;
    }
  }

  void handleDate(bool value) {
    if (value) {
      bff.value = false;
      bizz.value = false;
      date.value = value;
    } else {
      date.value = value;
    }
  }

  void handleSave() {
    if (bff.value || date.value || bizz.value) {
      String type = (bff.value)
          ? "BFF"
          : (date.value)
              ? "DATE"
              : "BIZZ";
      Get.toNamed(
        "/preference2",
        arguments: [
          {
            "type": type,
          },
        ],
      );
    }
  }
}
