import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharmproject/controller/buttonController.dart';
import 'package:tharmproject/controller/checkboxcheckboxController.dart';

class DataController extends GetxController {
  var itemList = [
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
}

class Learninghistory extends StatelessWidget {
  final int index; // index 값을 추가

  const Learninghistory({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final ButtonController buttoncontroller = Get.put(ButtonController());
    final CheckboxController checkcontroller = Get.put(CheckboxController());
    final DataController datacontroller = Get.put(DataController());

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(datacontroller.itemList[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18
                  ),
                );
              }),
              Obx(() {
                return Visibility(
                  visible: buttoncontroller.isButtonVisible.value,
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Obx(() => Checkbox(
                        value: index == 0 ? checkcontroller.firstCheck.value
                            : index == 1 ? checkcontroller.secondCheck.value
                                : checkcontroller.thirdCheck.value,
                        onChanged: (value) {
                          checkcontroller.toggleCheckbox(index); // index에 따라 선택
                        },
                        activeColor: const Color(0xffFF0000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        side: const BorderSide(
                          color: Color(0xffCACACA),
                          width: 1,
                        ),
                      )),
                  )
                );
              })
            ],
          ),
          Obx(() {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(datacontroller.itemList[index]['summery'].toString(),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            );
          }),
          Obx(() {
            return Align(
              alignment: Alignment.centerRight,
              child: Text(datacontroller.itemList[index]['progress'].toString(),
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            );
          }),
          const Padding(padding: EdgeInsets.only(top: 3)),
          const SizedBox(
            child: Image(image: AssetImage('assets/images/graph.png')),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 17, 0, 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom:BorderSide(color: Color.fromARGB(255, 237, 237, 237)))),
            // bottom: BorderSide(color: Color(0xfff2f2f2)))), // 원래
          ),
        ],
      ),
    );
  }
}
