import 'package:get/get.dart';

class CheckboxController extends GetxController {
  // 세 개의 Checkbox 상태를 각각 관리
  RxBool firstCheck = false.obs;
  RxBool secondCheck = false.obs;
  RxBool thirdCheck = false.obs;

  // 하나의 Checkbox가 선택될 때 나머지를 해제
  void toggleCheckbox(int index) {
    if (index == 0) {
      firstCheck.value = true;
      secondCheck.value = false;
      thirdCheck.value = false;
    } else if (index == 1) {
      firstCheck.value = false;
      secondCheck.value = true;
      thirdCheck.value = false;
    } else if (index == 2) {
      firstCheck.value = false;
      secondCheck.value = false;
      thirdCheck.value = true;
    }
  }
  
}

// class CheckboxController extends GetxController {
//   var isChecked = false.obs;

//   void toggleCheckbox(bool? value) {
//     isChecked.value = value ?? false;
//   }
// }