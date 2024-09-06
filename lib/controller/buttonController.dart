import 'package:get/get.dart';

// 애 왜 아무런 기능이 없는데 연결되어 있지?
class ButtonController extends GetxController {
  var isButtonVisible = true.obs;
  // var isButtonVisible = false.obs;
  void toggleButtonVisibility() {
    isButtonVisible.value = !isButtonVisible.value;
  }
}