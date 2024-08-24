import 'package:get/get.dart';

class ButtonController extends GetxController {
  // var isButtonVisible = true.obs;
  var isButtonVisible = false.obs;
  void toggleButtonVisibility() {
    isButtonVisible.value = !isButtonVisible.value;
  }
}