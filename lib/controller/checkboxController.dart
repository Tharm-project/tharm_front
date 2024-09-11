import 'package:get/get.dart';

class CheckboxController extends GetxController {
  final RxBool isButtonVisible = RxBool(false);
  final RxList<int> selectIndexList = RxList([]);
  final List<Map<String, dynamic>> itemList = [
    {
      "name": "2024-09-06",
      "summery": "진자로 정말로 왜그러지?",
      "status": 10,
      "progress": "25% 진행완료!",
    },
    {
      "name": "결혼행진곡",
      "summery": "집가고싶당 이요힛~",
      "status": 10,
      "progress": "50% 진행완료!",
    },
    {
      "name": "응애",
      "summery": "않되~~~~~~~~~~~~~",
      "status": 10,
      "progress": "75% 진행완료!",
    },
  ].obs;

  void toggleButtonVisibility() {
    isButtonVisible.value = !isButtonVisible.value;
  }

  void del() {
    for (var index in selectIndexList) {
      itemList.removeAt(index);
    }
    selectIndexList.value = [];
    isButtonVisible.value = false;
    update();
  }

  // 하나의 Checkbox가 선택될 때 나머지를 해제
  void toggleCheckbox(int index) {
    if (selectIndexList.contains(index)) {
      selectIndexList.remove(index);
    } else {
      selectIndexList.add(index);
    }
  }

  void asdf() {}
}

// class CheckboxController extends GetxController {
//   var isChecked = false.obs;

//   void toggleCheckbox(bool? value) {
//     isChecked.value = value ?? false;
//   }
// }