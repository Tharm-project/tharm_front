import 'package:get/get.dart';

// 설정 버튼 클릭 시 체크박스 보이게 해주는 애
class ButtonController extends GetxController {
  var isButtonVisible = false.obs;
  // var isButtonVisible = false.obs;
  void toggleButtonVisibility() {
    isButtonVisible.value = !isButtonVisible.value;
  }
}